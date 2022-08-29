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
typedef long long ll;

// cout << "Case #" << t << ": ";
int main(){fast_io;

		ofstream fout ("testeula.ula");
 	//  ifstream fin ("test.in");
	vector<string> v = {"An","nAoB","AnB", "zeroL","nAeB","Bn","AxB","ABn","AnoB","nAxB","copiaB","AB","umL","AoBn","AoB","copiaA"};	
	vector<char> vc = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
	//random seed
	srand (time(NULL));
	ll n; cin >> n;
	int k = rand() % 16;
	fout << "inicio:\n";
	while(n--){
		string x = "X=";
		string y = "Y=";
		string w = "W=";
		char smc = ';';
		x.pb(vc[k]);
		k = rand() % 16;
		y.pb(vc[k]);
		k = rand() % 16;
		w.append(v[k]);
		x.pb(smc), y.pb(smc), w.pb(smc);
		vector<string>vs = {x,y,w};
		k = rand() % 3;
		fout << vs[k] << endl;
//		fout << x << endl << y << endl << w << endl;
	}
	fout << "fim.\n";
	return (0);
}
