#!/bin/bash	
# OpenMSX Start Script
# The emulator will be started only if it's not already active


xopenmsx=`ps x | grep "openmsx " | grep -v grep`
 
if [ "${xopenmsx}" == "" ]; then
  echo "...starting openMSX, with specific options"
  openmsx -script openmsx_asm.txt
else
  echo "...openMSX already running"
fi
