# https://github.com/FFmpeg/FFmpeg
SRC_BASE=..
SRC_NAME=FFmpeg-n5.1.1
SRC_ARCHIVE_SUFFIX=tar.gz
SRC_URL=https://github.com/FFmpeg/FFmpeg/archive/refs/tags/n5.1.1.tar.gz
include ${SRC_BASE}/common/params.mk


all: src_download_done src_extract_done src_config_done
	( make -j${NUMPROC} -C ${SRC_NAME}; \
	make install -C ${SRC_NAME}; \
	)

patch:
	@echo "${SRC_NAME} patch done"

configure:
	echo ${CFLAGS}; \
	( cd ${SRC_NAME}; \
	./configure \
	--pkg-config-flags=--static \
	--extra-ldflags=-lpthread \
	--enable-static \
	--disable-shared \
	--enable-pthreads \
	--enable-gpl \
	--disable-doc \
	--disable-debug \
	--enable-libx265; \
	)
	@echo "${SRC_NAME} configure done"


include ${SRC_BASE}/common/src.mk
