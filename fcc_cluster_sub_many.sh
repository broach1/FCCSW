#!/bin/bash

i=1             
#iteration number - begins with 1

NJOBS=4  
#total number of jobs to submit

LAR=5          
LEAD=1         
SM=6             
#mm
#SM=LAR+LEAD

NTOT=500         
#total number of events across all jobs: NTOT=EVTMAX*NJOBS

BFIELD=0         
#0 off, 1 on

ENE=250e3    
#MeV

EVTMAX=125      
#number of events in each job

PHIMIN=0    
PHIMAX=6.28           
#set phi range of generated particles

VX=0          
VY=0           
VZ=0
#set vertex coordinate of generated particle (mm)             

CLUSTER=1
#running on the FCC Cluster? 1 yes, 0 no

cp ../new_ecal_dim/${SM}mm/out_LAR${LAR}_LEAD${LEAD}.xml Detector/DetFCChhECalSimple/compact/FCChh_ECalDefinition.xml

source init.sh


while [ $i -le $NJOBS ]
do

cp fullsim.py fullsim$i.py

#add job options to the python script
sed -i "8s/.*/ENE=$ENE/g" fullsim$i.py 
sed -i "9s/.*/EVTMAX=$EVTMAX/g" fullsim$i.py 
sed -i "10s/.*/BFIELD=$BFIELD/g" fullsim$i.py 
sed -i "11s/.*/PHIMIN=$PHIMIN/g" fullsim$i.py 
sed -i "12s/.*/PHIMAX=$PHIMAX/g" fullsim$i.py 
sed -i "13s/.*/VX=$VX/g" fullsim$i.py 
sed -i "14s/.*/VY=$VY/g" fullsim$i.py 
sed -i "15s/.*/VZ=$VZ/g" fullsim$i.py 
sed -i "16s/.*/i=$i/g" fullsim$i.py
sed -i "17s/.*/CLUSTER=1/g" fullsim$i.py
sed -i "18s/.*/LAR=$LAR/g" fullsim$i.py
sed -i "19s/.*/LEAD=$LEAD/g" fullsim$i.py


./run gaudirun.py fullsim$i.py > output_$i.log 2>&1 &
i=$[$i+1]

done
