#!/bin/bash

python3 -c "
import h5py
f = h5py.File('data/features_fullset/dev_queries_dino_base_patch16.hdf5', 'r')
first_key = list(f.keys())[0]
first_dataset = f[first_key]
length = len(first_dataset)
print(length)
for key in f.keys():
    print(key)
    print(f[key][:])
f.close()
"
