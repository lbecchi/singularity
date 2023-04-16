#    FROM bioconductor/bioconductor_docker:devel
from osgeo/gdal:ubuntu-full-3.4.1

RUN apt-get update
RUN apt-get install parallel jq pigz -y

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
 && locale-gen "en_US.UTF-8"
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8
# ENV LANG en_US.UTF-8  
# ENV LANGUAGE en_US:en  
# ENV LC_ALL en_US.UTF-8 
# RUN LC_ALL=en_US.UTF-8

# RUN LC_ALL=en_US.UTF-8 dpkg-reconfigure locales 