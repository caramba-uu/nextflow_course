# Nextflow for bigdata course


Contains RMD file to generate [course website](https://caramba-uu.github.io/nextflow_course/) page using knitr package.

[Creates manual for bigdata course](index.Rmd)


## [Required files for course](materials)
### mzML data are missing (big data, cannot upload)


Create singularity sif using [go here](materials/singularity) and run
```bash
sudo singularity build bigdatacourse.sif bigdatacourse.def
```


To create during the production stage helps to install packages and access files
```bash
sudo singularity build --sandbox bigdatacourse bigdatacourse.def
```

For the MZML files, remember to keep the permission as "-rwxr-xr-x". Remove group and other write permission
```bash
chmod -R g-w foldername
```
