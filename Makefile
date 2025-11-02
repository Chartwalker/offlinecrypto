include develop/config.mk

.PHONY: clean all test install stable

all:
	${TSC_SILENT_MAKE}./configure.sh
	${TSC_SILENT_MAKE}${TSC_SBP_MK} ${TSC_CDPR_DEVELOP_CONF} all

install:
	${TSC_SILENT_MAKE}./configure.sh
	${TSC_SILENT_MAKE}${TSC_SBP_MK} ${TSC_CDPR_DEVELOP_CONF} install

clean:
	${TSC_SILENT_MAKE}./configure.sh
	${TSC_SILENT_MAKE}${TSC_SBP_MK} ${TSC_CDPR_DEVELOP_CONF} clean

test:
	${TSC_SILENT_MAKE}./configure.sh
	${TSC_SILENT_MAKE}${TSC_SBP_MK} ${TSC_CDPR_DEVELOP_CONF} test

stable:
	${TSC_SILENT_MAKE}./configure.sh
	${TSC_SILENT_MAKE}${TSC_SBP_MK} ${TSC_CDPR_DEVELOP_CONF} stable
