int main(){
	printf("Bay gio la buoi chieu phai khong(y/n)? ");
	char c[50];
	scanf("%s",c);
	if(strcmp(c, "y") == 0 || strcmp(c, "Y") == 0){
		printf("Bay gio la buoi chieu\n");
	}else if(strcmp(c,"n") == 0 || strcmp(c, "N") == 0)
		printf("Bay gio KHONG phai buoi chieu\n");

	return 0;
}
