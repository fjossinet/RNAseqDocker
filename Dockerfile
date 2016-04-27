FROM continuumio/miniconda
MAINTAINER Fabrice Jossinet (fjossinet@gmail.com)
RUN apt-get update && apt-get install -y git wget build-essential

#bowtie2
WORKDIR /
RUN wget -qO bowtie2-2.2.6.tar.gz https://dl.dropboxusercontent.com/u/3753967/algorithms/bowtie2-2.2.6.tar.gz && tar -xzvf bowtie2-2.2.6.tar.gz
WORKDIR bowtie2-2.2.6
RUN make && make install && make clean

#tophat2
WORKDIR /
RUN apt-get -y install libbz2-dev libboost-all-dev
RUN wget -qO tophat-2.1.0.tar.gz https://dl.dropboxusercontent.com/u/3753967/algorithms/tophat-2.1.0.tar.gz && tar -xzvf tophat-2.1.0.tar.gz
WORKDIR tophat-2.1.0
RUN ./configure
RUN make && make install && make clean

#samtools
WORKDIR /
RUN apt-get -y install libncurses5-dev
RUN wget -qO samtools-1.2.tar.bz2 http://dl.dropbox.com/u/3753967/algorithms/samtools-1.2.tar.bz2 && tar -xvjf samtools-1.2.tar.bz2
WORKDIR samtools-1.2
RUN make && make install && make clean
