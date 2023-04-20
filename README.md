# TotallyNativeCode
This project contains the code for the Totally Native! presentation

## Requisites

- VS 2022 (ASP.NET and web development)
- Emscripten: https://emscripten.org/docs/getting_started/downloads.html
  - Define an environment variable EMSDK_HOME, with the Emscripten installation folder.
- CMake: https://cmake.org/download/
- Ninja Build tools: https://github.com/ninja-build/ninja/releases

## Build
- Execute the following script to generate wasm libraries: /src/Calculator/build-scripts/WASM/build-wasm.ps1
- Open and build the .sln file in /src/TotallyNativeBlazorApp/TotallyNativeBlazorApp.sln
