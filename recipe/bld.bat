setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
mkdir build
cd build

cmake -G "NMake Makefiles" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      -DBUILD_SHARED_LIBS=ON ^
      -DRC_ENABLE_GTEST=ON ^
      -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=ON ^
    ..


if errorlevel 1 exit 1

:: Build!
nmake
if errorlevel 1 exit 1

:: Install!
nmake install
if errorlevel 1 exit 1
