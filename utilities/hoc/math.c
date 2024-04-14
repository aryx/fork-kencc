#include <lib9.h>

#include "hoc.h"
#include "mathi.h"

#define asin __ieee754_asin
#define acos __ieee754_acos
#define sinh __ieee754_sinh
#define cosh __ieee754_cosh

#define log __ieee754_log
#define log10 __ieee754_log10
#define exp __ieee754_exp
#define pow __ieee754_pow

#define isNaN isnan

double sqrt(double x) { return __ieee754_sqrt(x); }
double fmod(double x, double y) { return __ieee754_fmod(x, y); }
int isInf(double x, int y) { return 0; }

double	errcheck(double, char*);

double
Log(double x)
{
	return errcheck(log(x), "log");
}
double
Log10(double x)
{
	return errcheck(log10(x), "log10");
}

double
Sqrt(double x)
{
	return errcheck(sqrt(x), "sqrt");
}

double
Exp(double x)
{
	return errcheck(exp(x), "exp");
}

double
Asin(double x)
{
	return errcheck(asin(x), "asin");
}

double
Acos(double x)
{
	return errcheck(acos(x), "acos");
}

double
Sinh(double x)
{
	return errcheck(sinh(x), "sinh");
}
double
Cosh(double x)
{
	return errcheck(cosh(x), "cosh");
}
double
Pow(double x, double y)
{
	return errcheck(pow(x,y), "exponentiation");
}

double
integer(double x)
{
	if(x<-2147483648.0 || x>2147483647.0)
		execerror("argument out of domain", 0);
	return (double)(long)x;
}

double
errcheck(double d, char* s)	/* check result of library call */
{
	if(isNaN(d))
		execerror(s, "argument out of domain");
	if(isInf(d, 0))
		execerror(s, "result out of range");
	return d;
}
