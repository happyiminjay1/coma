import pickle
import torch
from torch.utils.data import Dataset, DataLoader
import numpy as np

# Load the .pkl file (replace 'path_to_your_file.pkl' with your file's path)


# Assuming the dictionary contains two keys 'features' and 'labels'

# Define a custom dataset
class HOI_info(Dataset):
    def __init__(self, file_path):

        with open(file_path, 'rb') as file:
            self.data = pickle.load(file)

        tensors = []

        for data_each in self.data :
            tensors.append(torch.from_numpy(data_each['hoi_feature']))
        
        torch_stacking = torch.stack(tensors,dim=0)

        self.mean = torch_stacking.mean(axis=0)
        self.std = torch_stacking.std(axis=0)    

        for data_each in self.data :
            data_each['hoi_feature'] = np.array( ( torch.from_numpy(data_each['hoi_feature']) - self.mean ) / self.std )

            

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        return self.data[idx]['hand_mesh'].x, self.data[idx]['hoi_feature'], self.data[idx]['contactmap'], self.data[idx]['taxonomy'],self.data[idx]['trans'], self.data[idx]['rep']
