@REM compile lib
for /f %%f in ('dir /b .\customLIB\source') do gcc -shared -c ./customLIB/source/%%f -o ./customLIB/obj/%%~nf.o -IcustomLIB/include

for /f %%f in ('dir /b .\customLIB\obj') do ar rcs ./customLIB/lib/lib%%~nf.a ./customLIB/obj/%%f
