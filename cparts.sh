#!/bin/bash
##################################################################
#
# Managed JETTY
#
##################################################################

APPNAME="cparts.sh"
SRCPATH="src/main/fritzing"

SUBFOLDERS=(
"Ohmmeter"
"Voltmeter"
"Ampmeter"
)

#------------------------------------------------------------------------------
# Functions
#

create() {
	rm -rf parts/*.fzpz
	
	echo "Part to prepare:";
	for SUBFOLDER in "${SUBFOLDERS[@]}"
	do
		echo -e "\t${SUBFOLDER}"
		#cd ${SUBFOLDER}
		zip -j parts/${SUBFOLDER}.fzpz ${SRCPATH}/${SUBFOLDER}/*.svg ${SRCPATH}/${SUBFOLDER}/*.fzp
		#cd ..
	done
}

create
exit 0