#    FROM bioconductor/bioconductor_docker:devel
from rocker/r-ver:4

RUN apt-get update
RUN apt-get install  libcairo2-dev libxt-dev libxml2-dev libxml2 libbz2-dev liblzma-dev curl libcurl4-openssl-dev -y
    # pillow dependencies
#    jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev
#    RUN pip install "flask==1.0.1" "CairoSVG==2.1.3"
RUN R -e 'install.packages("BiocManager")'

RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
    "tidyverse", "vroom", "VennDiagram", "PerformanceAnalytics", "Cairo","ComplexHeatmap", \
    "GO.db", "corrplot", ask = F))' && R -e 'tinytex::install_tinytex()'

#for Methylation Betas generation
RUN R -e 'BiocManager::install(c("limma", \
    "minfi", "IlluminaHumanMethylation450kanno.ilmn12.hg19", "IlluminaHumanMethylationEPICanno.ilm10b4.hg19",  \ 
    "IlluminaHumanMethylation450kmanifest","IlluminaHumanMethylationEPICmanifest","data.table", ask = F))'

# sudo docker build -t metadata .
# sudo docker tag metadata lbecchi/metadata:latest
# sudo docker push lbecchi/metadata:latest
