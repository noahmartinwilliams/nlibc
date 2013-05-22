int strcmp(char *s1, char *s2) {
	int x=0, y=0;

	do {
		if (s1[x]=='\0') {
			return s1[x]-s2[y];
		}
		x++;
		y++;
	} while (s1[x]==s2[y]);

	return s1[x]-s2[y];
}

int atoi(char *str) 
{
	int x;
	int number=0;
	int base=10;
	int digit=0;
	int neg=1;

	for (x=0; str[x]!='\0'; x++) {
		switch(str[x]) {
			case '-':
				neg=-1;
				break;
			case '0':
				digit=0;
				break;
			case '1':
				digit=1;
				break;

			case '2':
				digit=2;
				break;

			case '3':
				digit=3;
				break;

			case '4':
				digit=4;
				break;

			case '5':
				digit=5;
				break;

			case '6':
				digit=6;
				break;

			case '7':
				digit=7;
				break;

			case '8':
				digit=8;
				break;

			case '9':
				digit=9;
				break;

			case '\0':
				goto ret;
		}
		number=number*base;
		number+=digit;
	}

	ret:
	number*=neg;
	return number;
}
