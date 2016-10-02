#Modified build.mak for esp8266
#export PATH = $(PATH):~/Repos/esp-open-sdk/xtensa-lx106-elf/bin

export PJDIR := ~/Repos/pjproject
export MACHINE_NAME := lx106
export OS_NAME := freertos
export HOST_NAME := unix
export CC_NAME := gcc
export TARGET_NAME := lx106-freertos-gcc
export CROSS_COMPILE := xtensa-lx106-elf-
export LINUX_POLL := select

export APP_CC = $(CROSS_COMPILE)$(CC_NAME)

export APP_CFLAGS = $(CC_CFLAGS) $(OS_CFLAGS) $(HOST_CFLAGS) $(M_CFLAGS) $(CFLAGS) -I$(PJDIR)/pjlib/include -I$(PJDIR)/pjlib-util/include -I$(PJDIR)/pjnath/include -I$(PJDIR)/pjmedia/include -I$(PJDIR)/pjsip/include

export APP_CXXFLAGS = $(APP_CFLAGS)

export APP_LDFLAGS = -L$(PJDIR)/pjlib/lib -L$(PJDIR)/pjlib-util/lib -L$(PJDIR)/pjnath/lib -L$(PJDIR)/pjmedia/lib -L$(PJDIR)/pjsip/lib -L$(PJDIR)/third_party/lib 

export APP_LDLIBS = -lpjsua-$(TARGET_NAME) -lpjsip-ua-$(TARGET_NAME) -lpjsip-simple-$(TARGET_NAME) -lpjsip-$(TARGET_NAME) -lpjmedia-codec-$(TARGET_NAME) -lpjmedia-$(TARGET_NAME) -lpjnath-$(TARGET_NAME) -lpjlib-util-$(TARGET_NAME) $(APP_THIRD_PARTY_LIBS) $(APP_THIRD_PARTY_EXT) -lpj-$(TARGET_NAME) $(CC_LDFLAGS) $(OS_LDFLAGS) $(M_LDFLAGS) $(HOST_LDFLAGS) $(LDFLAGS)

export PJ_DIR = $(PJDIR)
export PJ_CC = $(APP_CC)
export PJ_CFLAGS = $(APP_CFLAGS)
export PJ_CXXFLAGS = $(APP_CXXFLAGS)
export PJ_LDFLAGS = $(APP_LDFLAGS)
export PJ_LDLIBS = $(APP_LDLIBS)

