include ../config.mk

.PHONY: all libs includes test clean gui

all: clean includes libs gui test

includes:

libs:

gui: ../config.mk includes Makefile $(TSC_PRJG_FNAME).c $(TSC_PRJG_FNAME).h ccu.cpp ccu.hpp
	$(TSC_SBP_CPP) $(CFLAGS_GLIB) $(CFLAGS_GTK) -I. -I $(TSC_CDPA_INCL) -D _GNU_SOURCE -L ../lib ccu.cpp -o ccu -rdynamic  $(LIBS_GLIB) $(LIBS_GTK)
	$(TSC_SBP_CC) $(CFLAGS_GLIB) $(CFLAGS_GTK) -I. -I $(TSC_CDPA_INCL) -D _GNU_SOURCE -L ../lib $(TSC_PRJG_FNAME).c -o $(TSC_PRJG_FNAME) -rdynamic  $(LIBS_GLIB) $(LIBS_GTK)

test:
	./$(TSC_PRJG_FNAME)


clean:
	$(TSC_SBP_RM) ./$(TSC_PRJG_FNAME)


