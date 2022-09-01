SRC_BASE=..
SRC_NAME=FFmpeg-n5.1.1
SRC_ARCHIVE_SUFFIX=tar.gz
SRC_URL=https://github.com/FFmpeg/FFmpeg/archive/refs/tags/n5.1.1.tar.gz
include ${SRC_BASE}/common/params.mk

all: src_download_test src_extract_test src_config_test
	( cd $(SRC_NAME); \
	make -j$(NUMPROC); \
	make install; \
	)

patch:
	@echo "${SRC_NAME} patch done"

configure:
	( cd $(SRC_NAME); \
	./configure \
	--enable-gpl \
	--enable-libx265; \
	)
	@echo "${SRC_NAME} configure done"

include ${SRC_BASE}/common/src.mk
