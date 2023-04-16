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
    "minfi", "Seurat", "IlluminaHumanMethylation450kanno.ilmn12.hg19", "IlluminaHumanMethylationEPICanno.ilm10b4.hg19",  \ 
    "IlluminaHumanMethylation450kmanifest","IlluminaHumanMethylationEPICmanifest","data.table", ask = F))'


#to debug Normalization for Metadata error
#https://support.bioconductor.org/p/122925/  
RUN R -e 'BiocManager::install("preprocessCore", configure.args="--disable-threading", ask = F)'

RUN R -e 'BiocManager::install(c("gplots", ask = F))'




RUN apt-get install  jq pigz -y

RUN apt-get update

RUN apt-get install ghostscript dbus  imagemagick --fix-missing -y

# RUN RIPGREP_VERSION=$(curl -s "https://api.github.com/repos/BurntSushi/ripgrep/releases/latest" | grep -Po '"tag_name": "\K[0-9.]+')
# RUN curl -Lo ripgrep.deb "https://github.com/BurntSushi/ripgrep/releases/latest/download/ripgrep_${RIPGREP_VERSION}_amd64.deb" && apt install -y ripgrep.deb
 
# RUN rg --version
# RUN rm -rf ripgrep.deb

# NODEJS
# # add node and npm to path so the commands are available
# ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
# ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs

# confirm installation
RUN node -v
RUN npm -v
RUN which node
RUN which npm

# NPM global packages
ENV PATH=$PATH:/home/node/.npm-global/bin
# install CSV2XSLX converter
RUN npm -g config set user root
# RUN npm install --global @aternus/csv-to-xlsx  

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# optionally if you want to run npm global bin without specifying path
# ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm install --global @aternus/csv-to-xlsx  
# RUN ls /home/node/.npm-global
# RUN ls /home/node/.npm-global/bin
# RUN ls /home/node/.npm-global/lib/node_modules





# installing RG
# install rust  
RUN curl https://sh.rustup.rs -sSf > rustup.sh
RUN chmod 755 rustup.sh
RUN ./rustup.sh -y
RUN rm ./rustup.sh
RUN ~/.cargo/bin/cargo install ripgrep 


# sudo docker build -t metadata .
# sudo docker tag metadata lbecchi/metadata:latest
# docker push lbecchi/metadata:latest

# singularity shell docker://lbecchi/metadata:latest



