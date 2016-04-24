## Introduction

This is used to generate images (png) for visible light curing resins. Especially for the ones that use an LCD/LED screen for curing the resin.

## Prerequisites

* bash
* OpenSCAD version 2015.03-1 (might work on older version, but only tested on my computer)

## Usage

No installation required. Here are the steps required to get the sequence of images:

* Clone the repo
* Copy the stl file to the directory
* Create a directory `slices`
* Edit generate.sh and change the filename to your stl
* Change thickness value in openDLP.scad
* Change the layercount and min/max values to fit the stl
* run `./generate.sh`

## TODO
* [x] Make file name parametric
* [ ] Accept command line file name argument
* [ ] Condense into one script, instead of two (python?)
* [ ] Accept command line thickness value
* [ ] Compute z bounds automatically
