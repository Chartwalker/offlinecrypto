include develop/config.mk

.PHONY: clean all test install stable

all:
	./configure.sh
	make -C $(TSC_CDPR_DEVELOP_CONF) all

install:
	./configure.sh
	make -C $(TSC_CDPR_DEVELOP_CONF) install

clean:
	./configure.sh
	make -C $(TSC_CDPR_DEVELOP_CONF) clean

test:
	./configure.sh
	make -C $(TSC_CDPR_DEVELOP_CONF) test

stable:
	./configure.sh
	make -C $(TSC_CDPR_DEVELOP_CONF) stable
