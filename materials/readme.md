## Required files for course
### mzML data are missing (big data, cannot upload)


Create singularity sif using, [go to singularity folder](singularity) and run
```bash
sudo singularity build bigdatacourse.sif bigdatacourse.def
```

To create during the production stage, helps to install packages and access files
```bash
sudo singularity build --sandbox bigdatacourse bigdatacourse.def
```
