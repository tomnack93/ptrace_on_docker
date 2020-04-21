#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <string.h>

void sigsegv_handler(int n)
{
  static int count = 0;
  count++;
  if (count > 10) {
    printf("handler was called for more than the allowed times\n");
    exit(1);
  };
  printf("trapped signal No.%d SIGSEGV for %d time(s)\n", n, count);
}

int main(void)
{
  struct sigaction sa;
  sa.sa_handler = sigsegv_handler;
  sigemptyset(&sa.sa_mask);
  sa.sa_flags = 0;
  if (sigaction(SIGSEGV, &sa, NULL) == -1) {
    printf("error happened");
  };
  
  char * c = "try to cause SIGSEGV";
  *c = 123;
  printf("%s", c);
}
