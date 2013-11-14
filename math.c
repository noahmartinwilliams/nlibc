
double fabs(double x)
{
	if (x==-0.0) {
		return 0.0;
	} else {
		return (x>0 ? x : -x);
	}
}
