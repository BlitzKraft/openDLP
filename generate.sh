#! /bin/bash

file="coffee.stl";

layercount=20;
dirname=$(echo $file | cut -d . -f 1);
mkdir $dirname;
filename="\"$file\"";
for num in `seq 0 $layercount`;
do
	openscad -o "$dirname/img$num.png" --camera=0,0,5,0,0,0 --projection=o --colorscheme=Starnight --imgsize=300,300 -D i=$num -D stlfile=$filename openDLP.scad;
	echo "Finished $num";
done

