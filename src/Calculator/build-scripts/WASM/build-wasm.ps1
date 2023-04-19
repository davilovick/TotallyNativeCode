$EmSDKHome = $Env:EMSDK_HOME

if (-Not (Test-Path $EmSDKHome)) {
	throw 'Emscripten SDK Home not found. Please, set the $EMSDK_HOME variable'
}

$BuildFolderName = "..\..\build\WASM"
$SrcProject = "..\..\src\"
$OutputFolder = "..\..\libs\wasm\"

if (Test-Path $BuildFolderName) {
	Remove-Item $BuildFolderName -Recurse -Force
}

mkdir $BuildFolderName

"$EmSDKHome/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake"

cmake $SrcProject -B $BuildFolderName -G "Ninja" --log-level=VERBOSE `
-DCMAKE_TOOLCHAIN_FILE="$EmSDKHome/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake" `
-DCMAKE_BUILD_TYPE=Release `
-DCMAKE_CXX_FLAGS_DEBUG="-g" `
-DCMAKE_CXX_FLAGS_RELEASE="-O3" `

pushd $BuildFolderName
ninja
Get-ChildItem . -Recurse -Filter *.a | Copy-Item -Destination "$OutputFolder" -Force -PassThru
popd