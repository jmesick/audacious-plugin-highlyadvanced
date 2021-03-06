PLUGIN = gsf${PLUGIN_SUFFIX}

SRCS = plugin.c			\
       gsf.cpp			\
       filterkit.cpp		\
       resample.cpp		\
       resamplesubs.cpp		\
       VBA/psftag.c		\
       VBA/memgzio.c		\
       VBA/GBA.cpp		\
       VBA/Sound.cpp		\
       VBA/Util.cpp		\
       VBA/Globals.cpp		\
       VBA/bios.cpp		\
       VBA/snd_interp.cpp	\
       VBA/unzip.cpp		\

include buildsys.mk
include extra.mk

plugindir = ${AUDACIOUS_PLUGIN_DIR}

CFLAGS += ${PLUGIN_CFLAGS} ${GLIB_CFLAGS}
CXXFLAGS = ${CFLAGS}
CPPFLAGS += -DLINUX -I./VBA -DVERSION_STR=\"3.2\" -DHA_VERSION_STR=\"3.2\" ${AUDACIOUS_CFLAGS}
LIBS += ${AUDACIOUS_LIBS} -lz
LD = ${CXX}