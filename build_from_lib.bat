@REM compile main
gcc -c ./main.c -o main.o -IcustomLIB/include

@REM link
gcc -LcustomLIB/lib main.o -o main.exe -lfunction

@REM dmp asm
objdump -D main.o > main.log


