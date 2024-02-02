// CPP program to find highest power
// of 2 that divides n.
#include<iostream>
using namespace std;
 
long highestPowerOf2(long n)
{
    return (n & (~(n - 1)));
}
 
int main()
{
    long n = 1307674368000;
    cout << highestPowerOf2(n);
    return 0;
}
