mkdir vsbuild
cd vsbuild
del Release\gwYAMLTest.exe
cmake -G "Visual Studio 10" ../source/
C:\Windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe gwYAML.sln /p:Configuration=Release
Release\gwYAMLTest.exe
pause
