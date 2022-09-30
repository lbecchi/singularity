# Docker containers for bio-informatics



##  Usage with Singularity
The first time you run a container with Singularity you get it cached. It takes a minute to download.
From second time you run it faster, straight from cache.
If the container get updated you will receive an incremental update.

### Simple command line
#### Tests
List files on current directory.
```
singularity run  docker://lbecchi/metadata:latest ls
```
Get NodeJS version:
```
singularity run  docker://lbecchi/metadata:latest node -v
```
#### Rscript
```
singularity run  docker://lbecchi/metadata:latest Rscript  /path/r_script_name.slurm
```
#### R interactive session
```
singularity run  docker://lbecchi/metadata:latest 
```
### Slurm job
Job name "Rsession", 1 cores (-c1), time 1 hour (-t 1:00:00), 1 GB memory (--mem 1G)
```
srun --mem 1G  -J RJob -c1 -t 1:00:00  singularity run  docker://lbecchi/regioneR:latest Rscript /path/r_script_name.slurm parameter1 parameter2
```

### Slurm interactive sessions
#### R session
Job name "Rsession", 4 cores (-c4), time 1 hour (-t 1:00:00), 10 GB memory (--mem 10G)
```
salloc --mem 10G  -J RSession -c4 -t 1:00:00  singularity run  docker://lbecchi/regioneR:latest
```
#### Python interactive session
Job name "Rsession", 20 cores (-c20), time 1 hour (-t 1:00:00), 10 GB memory (--mem 10G), node name "c02" (-c02)
```
salloc --mem 10G -J PythonSession -c20 -w c02 -t 1:00:00  singularity exec  docker://jupyter/scipy-notebook python
```


##  Dockerfiles for bio-informatics

### R

4. [r4](./r4) : R version 4.2.1 from rocker/r-ver. Brings ComplexHeatmap. Ready for testing
4. [regioneR](./regioneR) : R version 4.2.1 from rocker/r-ver. Brings regioneR. Ready for testing


### Metadata project
Dockerfile: [Metadata](./metadata)  
Packages:
* Nodejs
    * aternus/csv-to-xlsx 
* R
    * BiocManager 
    * minfi
    * limma
    * IlluminaHumanMethylation450kanno.ilmn12.hg19
    * IlluminaHumanMethylationEPICanno.ilm10b4.hg19
    * IlluminaHumanMethylation450kmanifest
    * IlluminaHumanMethylationEPICmanifest
    * data.table
    * magick
    * tidyverse
    * vroom
    * VennDiagram
    * PerformanceAnalytics
    * Cairo
    * ComplexHeatmap
    * GO.db
    * corrplot
