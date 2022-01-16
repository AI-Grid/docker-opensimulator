#!/bin/bash

opensim_version=0.8.2.1
# installing opensim-0.9.1.1
cd /opt/
wget http://opensimulator.org/dist/opensim-${opensim_version}.tar.gz
tar xvfvz opensim-${opensim_version}.tar.gz
mv /opt/opensim-${opensim_version} /opt/opensim
rm opensim-${opensim_version}.tar.gz
