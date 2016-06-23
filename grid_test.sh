#!/bin/sh

echo "started at $(date)"

#tar xzf FCCSW_zaborowska.tgz
#cd FCCSW_zaborowska

source ./init_fcc_stack.sh cvmfs

make -j 12
echo "started events at $(date)"
./run gaudirun.py fullsim.py
echo "ended events at $(date)"

#less DetectorDescription/Detectors/compact/FCChh_ECalDefinition.xml


echo "ended at $(date)"
