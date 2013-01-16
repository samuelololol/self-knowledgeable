all: ab TinyHelloWorld TinyHelloWorld-default hello
ab: a.c b.c
	i686-pc-linux-gnu-gcc -c a.c b.c
	i686-pc-linux-gnu-ld a.o b.o -e main -o ab

TinyHelloWorld: TinyHelloWorld.c TinyHelloWorld.lds
	i686-pc-linux-gnu-gcc -c -fno-builtin TinyHelloWorld.c
	i686-pc-linux-gnu-ld -T TinyHelloWorld.lds -o TinyHelloWorld TinyHelloWorld.o

TinyHelloWorld-default: TinyHelloWorld.c 
	i686-pc-linux-gnu-gcc -c -fno-builtin TinyHelloWorld.c
	i686-pc-linux-gnu-ld -static -e nomain -o TinyHelloWorld-default TinyHelloWorld.o

hello:
	i686-pc-linux-gnu-gcc -static --verbose -fno-builtin hello.c

clean:
	rm -rf *.o ab TinyHelloWorld TinyHelloWorld-default
