SERVICES += lib https://github.com/freenit-framework/frontend
CBSD_WORKDIR != sysrc -n cbsd_workdir
LIB = YES

lib:
	@${MAKE} ${MAKEFLAGS} -C services/lib lib

lib_mount:
	@sudo mount -t nullfs "${PWD}/services/lib/dist" "${CBSD_WORKDIR}/jails/freenitfront/usr/src/node_modules/freenit/dist"
