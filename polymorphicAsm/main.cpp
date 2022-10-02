#include <iostream>

extern "C" int modifyCode(int i);

int main(){
    std::cout << modifyCode(5);
}