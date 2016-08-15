#include <stdio.h>
struct phanso{
int tu;
int mau;
};
typedef struct phanso PHANSO;

void nhap(PHANSO &x){
	printf("\nNhap tu: ");
	scanf("%d",&x.tu);
	printf("Nhap mau: ");
	scanf("%d",&x.mau);
}
void xuat(PHANSO x){
	printf("%d/%d", x.tu,x.mau);
}
int main(){
	PHANSO *a;
	int n;
	printf("Nhap n: ");
	scanf("%d", &n);
	a = new PHANSO[n];
	PHANSO* p = a;	//Khai bao con tro kieu PHANSO chay trong a;
	PHANSO* p1 = a;
	for(int i=0;i<n;i++){
		printf("Nhap a[%d]: ",i);
		nhap(*p);
		p++;
	}

	for(int i=0;i<n;i++){
		printf("\na[%d] = ",i);
		xuat(*p1);
		p1++;
	}
	printf("\n");
	delete [] a;
	return 0;
}
