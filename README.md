RNAseq2Docker
===============

A docker image supplemented with RNA-Seq/NGS algorithms: Bowtie2, Tophat2 and samtools.

Installation and Configuration
------------------------------

First you need to install Docker on your computer. You can find all the details [here](https://docs.docker.com/engine/installation/).

Now, get our docker image:

    docker pull fjossinet/rnaseq

This image is based on [ubuntu](https://hub.docker.com/r/library/ubuntu/).

Usage
-----

For example, to use the samtools algorithm, you can type something like the following:
