all:	libQEMU.a

libQEMU.a:	qemu_driver.o
	ar r libQEMU.a qemu_driver.o

qemu_driver.o:	qemu_driver.cpp
	clang++ -stdlib=libc++ -std=c++11 -O2 -c qemu_driver.cpp

clean:
	rm -f libQEMU.a qemu_driver.o core *~
