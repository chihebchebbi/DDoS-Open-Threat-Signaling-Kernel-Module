obj-m += linux_module.o

all:
 make -C /lib/modules/$(shell uname -r)/build SUBDIRS=$(PWD) modules

clean:
 make -C /lib/modules/$(shell uname -r)/build SUBDIRS=$(PWD) clean
