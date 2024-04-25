FROM ubuntu:22.04



COPY necessary_files/findPeaks.r usr/bin/
COPY necessary_files/group.r usr/bin/
COPY necessary_files/readOpenMS.r usr/bin/
COPY necessary_files/xcmsCollect.r usr/bin/
COPY necessary_files/retCor.r usr/bin/
COPY OpenMS-2.4.0-Debian-Linux-x86_64.deb /media/OpenMS-2.4.0-Debian-Linux-x86_64.deb

ARG DEBIAN_FRONTEND=noninteractive

# Installing python and necessary packages
RUN apt-get update -y && apt-get install python3-pip -y && pip install -U scikit-learn && pip install numpy && pip3 install pandas && pip install -U matplotlib && pip install seaborn && pip install pca


# Installing R and necessary packages
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get install -y wget && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && apt-get install software-properties-common -y && wget http://archive.ubuntu.com/ubuntu/pool/main/i/icu/libicu66_66.1-2ubuntu2_amd64.deb && dpkg -i libicu66_66.1-2ubuntu2_amd64.deb && add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' -y && apt install r-base -y
RUN apt-get install libnetcdf-dev -y && apt-get install libxml2 -y && apt-get install libxml2-dev -y && apt install cmake -y

# R packages
RUN  apt install libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev -y
RUN Rscript -e 'install.packages(c("XML", "xml2", "BiocManager", "FactoMineR", "ggplot2", "dplyr", "gt", "textshaping", "ggfortify", "cluster"),Ncpus=12)'
RUN Rscript -e 'install.packages(c("tidyverse", "matrixStats"), INSTALL_opts = "--no-lock",dep=T)'
RUN Rscript -e 'BiocManager::install(c("MSnbase", "xcms", "factoextra", "gridExtra", "PCAtools"),dep=T,update=FALSE,ask=FALSE,Ncpus=12)'


# Installing OpenMS
RUN apt-get update -y && apt-get install software-properties-common -y &&  apt-get install -y dialog  && add-apt-repository universe -y && apt update -y && apt-get install -y build-essential cmake autoconf patch libtool git automake && apt-get install -y qtbase5-dev libqt5svg5-dev libqt5opengl5-dev libeigen3-dev libboost-random-dev libboost-regex-dev libboost-iostreams-dev libboost-date-time-dev libboost-math-dev libxerces-c-dev zlib1g-dev libsvm-dev libbz2-dev coinor-libcoinmp-dev libhdf5-dev

RUN wget -O /media/OpenMS-2.4.0-Debian-Linux-x86_64.deb https://abibuilder.cs.uni-tuebingen.de/archive/openms/OpenMSInstaller/release/2.4.0/OpenMS-2.4.0-Debian-Linux-x86_64.deb && dpkg -i /media/OpenMS-2.4.0-Debian-Linux-x86_64.deb

RUN strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
