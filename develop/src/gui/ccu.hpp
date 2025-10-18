#ifndef __GUI_CC_H__
#define __GUI_CC_H__

#include <iostream>

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <time.h>
#include <math.h>
#include <glib.h>
#include "../config.h"
// for use with c++ 
#include <gtk/gtk.h>
#include <gtk/button.h>
#include <gtk/window.h>

typedef  struct Ccu_Gui_struct{
  GtkBuilder *Builder_p;
  GtkWidget *Window_p;
} Ccu_Gui_t;

typedef  struct Ccu_Files_struct{
  file *in_fp;
  file *out_fp;	
  file *err_fp;
  file *cgi_fp;	
  file *debug_fp;
  file *stat_fp;	
  file *dbi_fp;	
} Ccu_Files_t;

typedef  struct Ccu_Cgi_struct{
  gulong stat_gul;
} Ccu_Cgi_t;

typedef  struct Ccu_Dbi_struct{
  gulong stat_gul;
} Ccu_Dbi_t;

typedef  struct Ccu_Stat_struct{
  gulong stat_gul;
} Ccu_Dbi_t;


#endif // __GUI_CC_H__

