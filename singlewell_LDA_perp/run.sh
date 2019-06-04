#!/bin/bash

#ibound is the perpendicular distance from the axis separating the two H atoms
#n_pos is the distace from the center of the axis separating the two fixed Hs to the uantum H
#n_bound is the number of steps in the perpendicular direction and nbound is the number of steps in the parallel directon
for n_bound in {0..8}; do
    export nbound="$(echo $n_bound | awk '{printf("%d", 8)}')"
    export ibound="$(echo $n_bound | awk '{printf("%.4f", 0.719643*$1/20)}')"
    echo “Outside loop: ${ibound}”
    for (( n_pos=0; n_pos<=${nbound}; n_pos++ )); do
        export inpos="$(echo $n_pos | awk '{printf("%.4f", $1*0.719643/8  )}')"

	echo ${inpos}
        #echo ${ibound} 
	#jdftx -i totalE.in
    done
done
