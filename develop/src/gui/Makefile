include ../../config.mk

.PHONY: config libs test clean gui

all: gui clean gui

includes:
	make -C ../$(TSC_CDPR_INCL) includes
	make -C ../$(TSC_CDPA_LIBSYMBIOT) includes
	$(TSC_SBP_CP) ./$(TSC_PRJG_FNAME).hpp ../$(TSC_CDPA_INCL)/$(TSC_PRJG_FNAME)/$(TSC_CDN_GUI)
	$(TSC_SBP_CP) ../config.h $(TSC_CDPA_INCL)/$(TSC_PRJG_FNAME)

config: ;
	make -C ${TSC_CDPA_CONF} config

libs:
	make -C ../$(TSC_CDPA_LIB) libs
	make -C ../$(TSC_CDPA_LIBSYMBIOT) libs

gui: ../../config.mk Makefile $(TSC_PRJG_FNAME).cpp $(TSC_PRJG_FNAME).hpp
	$(TSC_SBP_CC) $(CFLAGS_GLIB) $(CFLAGS_GTK) -I ../$(TSC_CDPA_INCL) -D _GNU_SOURCE -L ../lib $(TSC_PRJG_FNAME).cpp -o $(TSC_PRJG_FNAME) -rdynamic  $(LIBS_GLIB) $(LIBS_GTK)

test:
	./$(TSC_PRJG_FNAME)
	make -C ../$(TSC_CDPA_LIBSYMBIOT) test

clean:
	$(TSC_SBP_RM) ./$(TSC_PRJG_FNAME)
	make -C ../$(TSC_CDPA_LIBSYMBIOT) clean


