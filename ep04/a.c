#include <stdio.h>
#include <stdlib.h> 
#include <time.h>

//void faz(){}

int main(){
	clock_t inicio, fim, t;
	float tempo, media = 0;
	register int c;
	int k; 
	int j = 3, i = 0;
	t = CLOCKS_PER_SEC;
	for(k = 1; k <= 10; k = k + 1){
		inicio = clock();
		for(c = 1; c <= 1e7; c = c + 1)i = i + j;
		fim = clock();
		tempo = ((fim - inicio) * 1000/CLOCKS_PER_SEC);
		printf("\nTempo : %g ms.", tempo);
		media = media + tempo; 
	}
	printf("\nTempo gasto media: %g ms.", media/10);
	return 0;
}
