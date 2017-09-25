prog: enoceanspy.o
	gcc -m32 -o enoceanspy enoceanspy.o

enoceanspy.o: enoceanspy.c
	gcc -m32 -c enoceanspy.c

clean: 
	rm enoceanspy.o enoceanspy

dist:
	tar -cf enoceanspy_raspi.tar enoceanspy enoceanspy.c LICENSE README.md
	gzip enoceanspy_raspi.tar
 
