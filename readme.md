#  Dockerfiles for bio-informatics

## R

4. [r4](./r4) : R version 4.2.1 from rocker/r-ver. Brings ComplexHeatmap. Ready for testing
4. [regioneR](./regioneR) : R version 4.2.1 from rocker/r-ver. Brings regioneR. Ready for testing


## Metadata project
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
# Dockerhub 
## login (if not already)
docker login
## enter folder
cd r3
## build
docker build -t r_4_2_1 .
## tag
docker tag docker tag r_4_2_1:latest lbecchi/r_4_2_1:latest
## publish
docker push lbecchi/r_4_2_1:latest
