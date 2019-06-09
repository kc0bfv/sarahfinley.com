OUTNAME := $(shell date +sflmt_front_%Y%m%d-%H%M%S)

all:
	hugo
	mv public ${OUTNAME}
	tar cfj ${OUTNAME}.tar.bz2 ${OUTNAME}
	rm -rf ${OUTNAME}
