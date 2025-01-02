# https://github.com/mozilla/mozjpeg
SRC_BASE=..
SRC_NAME=mozjpeg-4.1.5
SRC_ARCHIVE_SUFFIX=tar.gz
SRC_URL=https://github.com/mozilla/mozjpeg/archive/refs/tags/v4.1.5.tar.gz
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
	cmake3 ../${SRC_NAME} \
	-DCMAKE_BUILD_TYPE=Release \
	-DENABLE_SHARED=FALSE \
	-DENABLE_STATIC=TRUE \
	-DREQUIRE_SIMD=TRUE \
	-DWITH_SIMD=TRUE \
	-DCMAKE_INSTALL_PREFIX=/usr/local; \
	)
	@echo "${SRC_NAME} configure done"


include ${SRC_BASE}/common/src.mk
