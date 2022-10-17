$downloadUrl = "https://github.com/brechtsanders/winlibs_mingw/releases/download/12.1.0-14.0.6-10.0.0-ucrt-r3/winlibs-x86_64-posix-seh-gcc-12.1.0-mingw-w64ucrt-10.0.0-r3.zip"
$downloadPath = "$PSScriptRoot\winlibs-x86_64-posix-seh-gcc-12.1.0-mingw-w64ucrt-10.0.0-r3.zip"
Invoke-WebRequest $downloadUrl -OutFile $downloadPath
Expand-Archive $downloadPath -DestinationPath $PSScriptRoot -Force