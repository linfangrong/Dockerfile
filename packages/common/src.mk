src_download_done:
	( if [ ! -f ${SRC_NAME}.${SRC_ARCHIVE_SUFFIX} ]; then \
		wget -t5 --timeout=20 --no-check-certificate -O ${SRC_NAME}.${SRC_ARCHIVE_SUFFIX} ${SRC_URL}; \
	fi )

src_extract_done:
	( if [ ! -d ${SRC_NAME} ]; then \
		if [ "${SRC_ARCHIVE_SUFFIX}" = "tar.xz" ]; then \
			tar -xzf ${SRC_NAME}.${SRC_ARCHIVE_SUFFIX}; \
		else \
			tar -xJf ${SRC_NAME}.${SRC_ARCHIVE_SUFFIX}; \
		fi; \
		make patch; \
	fi )

src_config_done:
	( if [ -f ./config_done ]; then \
		echo "${SRC_NAME} the same configuration"; \
	else \
		make configure && touch config_done; \
	fi )

clean:
	rm -rf build-${SRC_NAME}
	rm -rf ${SRC_NAME}
	rm -rf config_done
