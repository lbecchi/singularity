#    FROM bioconductor/bioconductor_docker:devel
from rocker/r-ver:4

RUN apt-get update
RUN apt-get install  libcairo2-dev libxt-dev libxml2-dev libxml2 libbz2-dev liblzma-dev curl  libcurl4-openssl-dev -y

RUN R -e 'install.packages("BiocManager")'

RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
    "tidyverse", "vroom", "VennDiagram", "PerformanceAnalytics", "Cairo","ComplexHeatmap", "regioneR", \ 
    "Rsamtools","GenomicAlignments","restfulr","rtracklayer","Rsamtools","Rhtslib", \
    "GO.db", "corrplot", ask = F))' && R -e 'tinytex::install_tinytex()'


