lbfgs.c : lbfgs.f
	f2c lbfgs.f

lbfgs.o : lbfgs.c
	gcc -fPIC -c lbfgs.c

clib : lbfgs.o
	gcc -shared -o lbfgs.so lbfgs.o -lf2c

clean :
	rm *.c *.o *.so