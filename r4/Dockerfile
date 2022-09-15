#    FROM bioconductor/bioconductor_docker:devel
from rocker/r-ver:4

RUN apt-get update
RUN apt-get install  libcairo2-dev libxt-dev -y
    # pillow dependencies
#    jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev
#    RUN pip install "flask==1.0.1" "CairoSVG==2.1.3"
RUN R -e 'install.packages("BiocManager")'

RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
    "tidyverse", "vroom", "VennDiagram", "PerformanceAnalytics", "Cairo","ComplexHeatmap", "regioneR", \
    "GO.db", "corrplot", ask = F))' && R -e 'tinytex::install_tinytex()'


