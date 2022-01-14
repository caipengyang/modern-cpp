#include <iostream>
using namespace std;

template<typename U, typename V>
auto add(U a, V b) {
    return a + b;
}

int main(){
    cout<<"hello, world:"<<add(1, 2.3)<<endl;
    return 0;
}