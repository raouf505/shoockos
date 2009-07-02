@echo off
cd source
..\nasm -f bin -o bootload.bin bootload.asm
..\nasm -f bin -o kernel.bin kernel.asm
cd ..
cd programs
 for %%i in (*.asm) do ..\nasm -fbin %%i
 for %%i in (*.bin) do del %%i
 for %%i in (*.) do ren %%i %%i.bin
cd ..
cd bin
..\partcopy ..\source\bootload.bin 0 200 os.img 0
cd ..
imdisk -a -f bin\os.img -s 1440K -m B:
copy source\kernel.bin B:\
copy programs\*.bin b:\
imdisk -D -m B:
echo Done!
pause