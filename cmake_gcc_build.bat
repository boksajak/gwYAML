mkdir build
cd build
del gwYAMLTest.exe
cmake -G "MinGW Makefiles" ../source/
mingw32-make 2>make.log
gwYAMLTest.exe
pause