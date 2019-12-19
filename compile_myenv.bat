set DelphiVersion=DelphiXE10
set mORMot=C:\Dev\Components\mORMot
set ZeosLib=C:\Dev\Components\ZeosLib
set ZeosInc=%ZeosLib%\src
set ZeosPathBase=%Zeoslib%\packages\%DelphiVersion%
set SamplesOnly=true

echo "***Win32(Release)***"

set DCC=C:\Dev\IDE\RSXE10.0\bin\dcc32.exe
set Platform=Win32
set Config=Release
:set MySwitches=-Y+
set MySwitches=
pushd  %~dp0%
call compilpil_myenv.bat
popd

echo "***Win32(Debug)***"

set DCC=C:\Dev\IDE\RSXE10.0\bin\dcc32.exe
set Platform=Win32
set Config=Debug
:set MySwitches=-V -$Y+
set MySwitches=-V
pushd  %~dp0%
call compilpil_myenv.bat
popd

echo "***Win64(Release)***"

set DCC=C:\Dev\IDE\RSXE10.0\bin\dcc64.exe
set Platform=Win64
set Config=Release
:set MySwitches=-Y+
set MySwitches=
pushd  %~dp0%
call compilpil_myenv.bat
popd

echo "***Win64(Debug)***"

set DCC=C:\Dev\IDE\RSXE10.0\bin\dcc64.exe
set Platform=Win64
set Config=Debug
:set MySwitches=-V -$Y+
set MySwitches=-V
pushd  %~dp0%
call compilpil_myenv.bat
popd
