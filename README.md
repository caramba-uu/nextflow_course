# Nextflow for bigdata course


Contains RMD file to generate [course website](https://caramba-uu.github.io/nextflow_course/) page using knitr package.

[Creates manual for bigdata course](index.Rmd)


## [Required files for the course](materials)
### mzML data are missing (big data, cannot upload)


For docker manual [go to docker folder](materials/docker) (working with minor issues)

For singularity manual [go to singularity folder](materials/singularity) (not working in uppmax)

For the MZML files, remember to keep the permission as "-rwxr-xr-x". Remove group and other write permission
```bash
chmod -R g-w foldername
```

## Future edits
change instructions on what to submit (remove config submission for part2)  
make them to use consistent name for all parameter and mzml channels in part 2 (makes it easy for evaluation)  
make a python script to check for names, and other checks while they submit (maybe give it to the students, so they can check and submit the pipleline after that)  
