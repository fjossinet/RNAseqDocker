RNAseqDocker
===============

A docker image providing RNA-Seq/NGS algorithms: Bowtie2, Tophat2 and SAMtools.

Installation and Configuration
------------------------------

First you need to install Docker on your computer. You can find all the details [here](https://docs.docker.com/engine/installation/).

Now, get our docker image:

    docker pull fjossinet/rnaseq

This image is based on [continuumio/miniconda](https://github.com/ContinuumIO/docker-images/tree/master/miniconda).

Usage
-----

For example, to use the SAMtools algorithm, you should type something like:

    docker run -v /Users/fjossinet/my_files:/data fjossinet/rnaseq samtools view -c /data/my_file.bam
