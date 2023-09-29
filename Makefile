CC=gcc
compilar=-I. -I/usr/include/SOIL -lglut -lGLU -lSOIL -lGLEW -lGL -lm
headers=
objetos = main.o 

%.o: ../%.c $(headers)
	$(CC) -o $@ -c $< $(compilar)

compilar: $(objetos)
	gcc -o main $^ $(compilar)

executar: compilar
	./main
limpar:
	rm *.o main
