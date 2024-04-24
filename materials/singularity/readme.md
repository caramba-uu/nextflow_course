Create singularity sif using the above file, run
```bash
sudo singularity build bigdatacourse.sif bigdatacourse.def
```


To create during the production stage helps to install packages and access files
```bash
sudo singularity build --sandbox bigdatacourse bigdatacourse.def
```
To convert sandbox to sif file
```bash
sudo singularity build production.sif bigdatacourse/
```

For the MZML files, remember to keep the permission as "-rwxr-xr-x". Remove group and other write permission
```bash
chmod -R g-w foldername
```
