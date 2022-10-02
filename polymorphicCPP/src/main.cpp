#include <iostream>
#include <Windows.h>

#define QWORD unsigned long long

int func1Suze = 100;

int encrypt(QWORD funcStart, QWORD funcEnd){

    DWORD funSize = func1Suze;
    
    std::cout << "funcAddr: " << std::hex << (void*)funcStart << "\n";
    std::cout << "funcEnd: " << std::hex << (void*)funcEnd << "\n";
    std::cout << "funSize: " << std::hex << (void*)funSize << "\n";
    
    //funSize = 2;
    DWORD oldProtect = 0;
    VirtualProtect((LPVOID)funcStart, funSize, PAGE_EXECUTE_READWRITE, &oldProtect);

    std::cout << "encrypting...\n";
    for(int i=0; i<funSize; i++){((char*)funcStart)[i] += 1;std::cout << (void*)(((char*)funcStart)[i]) << "\n";}

    VirtualProtect((LPVOID)funcStart, funSize, oldProtect, NULL);

    return 0;
}
int decrypt(QWORD funcStart, QWORD funcEnd){

    DWORD funSize = func1Suze;
    
    std::cout << "funcAddr: " << std::hex << (void*)funcStart << "\n";
    std::cout << "funcEnd: " << std::hex << (void*)funcEnd << "\n";
    std::cout << "funSize: " << std::hex << (void*)funSize << "\n";
    
    //funSize = 2;
    DWORD oldProtect = 0;
    VirtualProtect((LPVOID)funcStart, funSize, PAGE_EXECUTE_READWRITE, &oldProtect);

    std::cout << "decrypting...\n";
    for(int i=0; i<funSize; i++){((char*)funcStart)[i] -= 1;}

    VirtualProtect((LPVOID)funcStart, funSize, oldProtect, NULL);

    return 0;
}

void step1(){std::cout << "I'm not encrypted\n";}
void delimiterFunc1(){std::cout << "just stuff\n";}

int main(){

    //encrypt((QWORD)step0, (QWORD)delimiterFunc0);
    //encrypt((QWORD)step1, (QWORD)delimiterFunc1);

    // std::cout << "type the pass to decrypt: ";
    // std::string pass = "";
    // std::cin >> pass;
    
    // if(pass == "pass"){decrypt((QWORD)step1, (QWORD)delimiterFunc1);}
    //decrypt((QWORD)step1, (QWORD)delimiterFunc1);
    //step1();

    return 0;
}