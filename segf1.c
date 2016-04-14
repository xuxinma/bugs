#include <stdio.h>

void foo(int* A, int N)
{
  for (int i=0; i<N; ++i) {
    A[i]=i;
  }
  A[N] = 99; // seg fault
}

int main()
{
  int A[]={3,1,4,2,5};
  foo (A, sizeof(A)/sizeof(int));
  return 0;
}
