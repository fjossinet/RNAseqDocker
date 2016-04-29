RNAseqDocker
===============

A docker image containing the following algorithms fully configured:

* [SAMtools](http://samtools.sourceforge.net)
* [Tophat2](https://ccb.jhu.edu/software/tophat/)
* [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2/index.shtml)

Installation
------------

First you need to install Docker on your computer. You can find all the details [here](https://docs.docker.com/engine/installation/).

Then, to get our docker image, you need to type:

    docker pull fjossinet/rnaseq

Usages and Examples
-------------------

In general, these algorithms need input files. Consequently, you have to mount the file system of your computer (the host) in the Docker container (the guest). This is done with the -v option.

SAMtools algorithm:

    docker run -v /Users/fjossinet/my_files:/data fjossinet/rnaseq samtools view -c /data/my_file.bam
