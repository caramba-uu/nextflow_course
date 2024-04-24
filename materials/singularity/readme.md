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
To inspect sif file and get the def file

```bash
singularity inspect --deffile bigdatacourse
```



