#! /bin/bash

layercount=20;

for num in `seq 0 $layercount`;
do
	openscad -o "./slices/img$num.png" --camera=0,0,5,0,0,0 --projection=o --colorscheme=Starnight --imgsize=300,300 -D i=$num openDLP.scad;
	echo "Finished $num";
done

