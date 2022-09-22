/*
ID: augusto15
TASK: test
LANG: C++                 
*/
#include <bits/stdc++.h>
using namespace std;
//vrum vrum
#define fast_io ios_base::sync_with_stdio(0); cin.tie(0);
//constants
#define endl "\n"
//functions
#define sqr(a) (a)*(a)
#define sz(x) ((int)x.size())
#define watch(x) cout << (#x) << " is " << (x) << endl
//utils
#define umap unordered_map
#define uset unordered_set
#define pb push_back
#define mk make_pair
#define fi first
#define sc second

// cout << "Case #" << t << ": ";
int main(){fast_io;

	  ofstream fout ("testeula.hex");
//      ifstream fin ("romanelli.ula");
	  ifstream fin ("testeula.ula");
	string s; fin >> s;
	string hex = "";
	char x = '0', y = '0';
	umap<string, char> mn_to_hex;
	// tabela dos mnemonicos pra hex
	mn_to_hex["An"] = '0';
	mn_to_hex["nAoB"] = '1';
	mn_to_hex["AnB"] = '2';
	mn_to_hex["zeroL"] = '3';
	mn_to_hex["nAeB"] = '4';
	mn_to_hex["Bn"] = '5';
	mn_to_hex["AxB"] = '6';
	mn_to_hex["ABn"] = '7';
	mn_to_hex["AnoB"] = '8';
	mn_to_hex["nAxB"] = '9';
	mn_to_hex["copiaB"] = 'A';
	mn_to_hex["AB"] = 'B';
	mn_to_hex["umL"] = 'C';
	mn_to_hex["AoBn"] = 'D';
	mn_to_hex["AoB"] = 'E';
	mn_to_hex["copiaA"] = 'F';
	while(fin >> s){
		if(s == "fim.") break;
		if(s[0] == 'X') x = s[2];	
		else if(s[0] == 'Y') y = s[2];	
		else{
			//funcionando
			hex.pb(x), hex.pb(y);
			string exp = s.substr(2,s.size() - 3);
			hex.pb(mn_to_hex[exp]);
			fout << hex << endl;
			hex.clear();
		}
	}
	return (0);
}
