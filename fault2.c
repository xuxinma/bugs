#include <stdio.h>
#include <stdlib.h>

int main()
{
  char *buf;

  buf = malloc(1<<31);// fail, return NULL, trying to allco 4GB

  fgets(buf, 1024, stdin);
  printf("%s\n", buf);

  return 1;
}
