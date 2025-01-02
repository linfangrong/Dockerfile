# https://github.com/videolan/x265
SRC_BASE=..
SRC_NAME=x265-3.4
SRC_ARCHIVE_SUFFIX=tar.gz
SRC_URL=https://github.com/videolan/x265/archive/refs/tags/3.4.tar.gz
include ${SRC_BASE}/common/params.mk


all: src_download_done src_extract_done src_config_done
	( make -j${NUMPROC} -C build-${SRC_NAME}; \
	make install -C build-${SRC_NAME}; \
	)

patch:
	@echo "${SRC_NAME} patch done"

configure:
	( rm -rf build-${SRC_NAME}; \
	mkdir build-${SRC_NAME}; \
	cd build-${SRC_NAME}; \
	cmake3 ../${SRC_NAME}/source \
	-DENABLE_SHARED:BOOL=OFF \
	-DCMAKE_BUILD_TYPE=Release; \
	)
	@echo "${SRC_NAME} configure done"


include ${SRC_BASE}/common/src.mk
