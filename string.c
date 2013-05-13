
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
