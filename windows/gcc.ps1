# Variables
$downloadUrl = "https://github.com/brechtsanders/winlibs_mingw/releases/download/12.1.0-14.0.6-10.0.0-ucrt-r3/winlibs-x86_64-posix-seh-gcc-12.1.0-mingw-w64ucrt-10.0.0-r3.zip"
$downloadPath = "$PSScriptRoot\winlibs-x86_64-posix-seh-gcc-12.1.0-mingw-w64ucrt-10.0.0-r3.zip"
$ccakeCacheDir = "$HOME\.ccake\cache"
$compilerDir = "$ccakeCacheDir\mingw64\bin"
$exeDir = "$compilerDir\gcc.exe"

# Download
Invoke-WebRequest $downloadUrl -OutFile $downloadPath

# Unzip
New-Item -ItemType Directory -Force -Path $compilerDir
Expand-Archive $downloadPath -DestinationPath $ccakeCacheDir -Force

# Configure CCake
& ccake configure --compiler-dir $exeDir