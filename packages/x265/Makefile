SRC_BASE=..
SRC_NAME=x265-3.4
SRC_ARCHIVE_SUFFIX=tar.gz
SRC_URL=https://github.com/videolan/x265/archive/refs/tags/3.4.tar.gz
include ${SRC_BASE}/common/params.mk

all: src_download_test src_extract_test src_config_test
	( cd $(SRC_NAME)/build-$(SRC_NAME); \
	make -j$(NUMPROC); \
	make install; \
	)

patch:
	@echo "${SRC_NAME} patch done"

configure:
	( cd $(SRC_NAME); \
	mkdir build-$(SRC_NAME); \
	cd build-$(SRC_NAME); \
	cmake3 \
	-DENABLE_SHARED:BOOL=OFF \
	../source; \
	)
	@echo "${SRC_NAME} configure done"

include ${SRC_BASE}/common/src.mk
