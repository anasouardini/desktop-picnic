
set msbuildpath="C:\Program Files (X86)\Microsoft Visual Studio\2019\\Community\MSBuild\Current\Bin\msbuild.exe"

%msbuildpath% "D:\D\my\tech\RAT\Lilith\executer\executer.vcxproj" /t:Rebuild /p:Configuration=release /p:Platform=x64