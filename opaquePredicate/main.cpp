#include <Windows.h>
#include <iostream>
#include <string.h>


std::string input = "";
int result = 0;

int func1(int number){

    if(number == 0){
        std::cout << "\nnumber is empty\n";
        return 0;
    }

    return number;
}

void dispatcher(int switcher){
    
    while(switcher != 0){
        switch (switcher)
        {
            case 4 : std::cin >> input;switcher=44;break;
            case 43: input = "";switcher=11;break;
            case 44:
                std::cout << "\nyou didn't enter an enput\n"; 
                if(input==""){switcher=32;}
                else{switcher=43;}
                break;
            case 32: std::cout << "\nok then\n";switcher=11;break;
            case 11: result = func1(0);switcher=0; break;
            default:break;
        }
    }
}

int main(){


    dispatcher(4);
    return result;
    //Sleep(99999999);
}