obj-m += simple_module.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

# sudo insmod simple_module.ko
# sudo dmesg | tail
# sudo rmmod simple_module