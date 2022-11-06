#include <bits/stdc++.h>
using namespace std;

int main(void){
	constexpr bitset<4> b{2};
	cout << b.to_string() << endl; 
	cout << b.to_string() << endl; 
	cout << "----" << endl;
	cout << (b^b) << endl;
	return 0;
}

