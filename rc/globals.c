#include "rc.h"
#include "exec.h"

// exec.h
thread *runq;
int ntrap;
int trap[NSIG];
int eflagok;
code *codebuf;

// rc.h
var *gvar[NVAR];		/* hash for globals */
int ndot;
int lastc;
char *promptstr;
int nerror;
int mypid;
char tok[NTOK + UTFmax];
tree *cmdtree;
