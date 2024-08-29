import os
import os.path as osp
from glob import glob

import torch
from torch_geometric.data import InMemoryDataset, extract_zip
from utils.read import read_mesh

from tqdm import tqdm
import pickle
import random

class CoMA(InMemoryDataset):
    url = 'https://coma.is.tue.mpg.de/'

    categories = [
        'bareteeth',
        'cheeks_in',
        'eyebrow',
        'high_smile',
        'lips_back',
        'lips_up',
        'mouth_down',
        'mouth_extreme',
        'mouth_middle',
        'mouth_open',
        'mouth_side',
        'mouth_up',
    ]

    def __init__(self,
                 root,
                 train=True,
                 split='interpolation',
                 test_exp='bareteeth',
                 transform=None,
                 pre_transform=None):
        self.split = split
        self.test_exp = test_exp
        if not osp.exists(osp.join(root, 'processed', self.split)):
            os.makedirs(osp.join(root, 'processed', self.split))
        if self.split == 'extrapolation':
            if self.test_exp not in self.categories:
                raise RuntimeError(
                    'Expected expressions in {}, but found {}'.format(
                        self.categories, self.test_exp))
            if not osp.exists(
                    osp.join(root, 'processed', self.split, self.test_exp)):
                os.makedirs(
                    osp.join(root, 'processed', self.split, self.test_exp))
        super().__init__(root, transform, pre_transform)

        path = self.processed_paths[0] if train else self.processed_paths[1]
        self.data, self.slices = torch.load(path)

    @property
    def raw_file_names(self):
        return '/scratch/minjay/coma/template/hand_mesh_template.obj'

    @property
    def processed_file_names(self):
        if self.split == 'extrapolation':
            # extrapolation/bareteeth/training.pt 
            # extrapolation/bareteeth/test.pt
            return [
                osp.join(self.split, self.test_exp, 'training_100.pt'),
                osp.join(self.split, self.test_exp, 'test_100.pt')
            ]
        elif self.split == 'interpolation':
            return [
                osp.join(self.split, 'training.pt'),
                osp.join(self.split, 'test.pt')
            ]
        else:
            raise RuntimeError(
                ('Expected the split of interpolation or extrapolation, but'
                 ' found {}').format(self.split))

    def download(self):
        raise RuntimeError(
            'Dataset not found. Please download COMA_data.zip from {} and '
            'move it to {}'.format(self.url, self.raw_dir))

    def process(self):

        print('Processing...')

        fps = glob('/home/minjay/GanHand_PreProcess/hand_mesh/*.ply')
        #fps_input_feature_contactmap = glob('/home/minjay/GanHand_PreProcess/contactopt_preprocess/*.pkl')

        random.shuffle(fps)

        train_data_list, test_data_list = [], []
        train_data_list_total, test_data_list_total = [], []
        for idx, fp in enumerate(tqdm(fps[:200])):

            data = read_mesh(fp)
            hoi_seq = fp.split('_')[-1].split('.')[0]

            with open(f'/home/minjay/GanHand_PreProcess/contactopt_preprocess/{hoi_seq}.pkl', 'rb') as file:
                data_feature_output = pickle.load(file)

            with open(f'/home/minjay/GanHand_PreProcess/hand_object_mesh_joint/{hoi_seq}.pkl', 'rb') as file:
                data_info = pickle.load(file)

            hoi_feature = data_feature_output['hand_feats_aug']
            contactmap = data_feature_output['hand_contact']
            taxonomy = data_info['taxonomy']
            trans = data_info['trans']
            rep = data_info['rep']

            #print(data_feature_output['hand_feats_aug'].shape) # ?it/s](778, 24)
            #print(data_feature_output['hand_contact'].shape) # (778, 1)

            if self.pre_transform is not None:
                data = self.pre_transform(data)

            data.x =  data.x - trans[0]

            data_total = {'hand_mesh':data, 'hoi_feature':hoi_feature, 'contactmap':contactmap, 'taxonomy':taxonomy, 'trans':trans, 'rep':rep}

            if self.split == 'interpolation':
                if (idx % 100) < 10:
                    test_data_list_total.append(data_total)
                else:
                    train_data_list_total.append(data_total)

                if (idx % 100) < 10:
                    test_data_list.append(data)
                else:
                    train_data_list.append(data)

            else:
                raise RuntimeError((
                    'Expected the split of interpolation or extrapolation, but'
                    ' found {}').format(self.split))
        
        #print(self.processed_paths)
        #['/scratch/minjay/coma/data/CoMA/processed/interpolation/training.pt', '/scratch/minjay/coma/data/CoMA/processed/interpolation/test.pt']

        torch.save(self.collate(train_data_list), self.processed_paths[0])
        torch.save(self.collate(test_data_list), self.processed_paths[1])
        
        with open('/scratch/minjay/coma/data/CoMA/processed/interpolation/training_total.pkl', 'wb') as file:
            pickle.dump(train_data_list_total, file)
        with open('/scratch/minjay/coma/data/CoMA/processed/interpolation/test_total.pkl', 'wb') as file:
            pickle.dump(test_data_list_total, file)
