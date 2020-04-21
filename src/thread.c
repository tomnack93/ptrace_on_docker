#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void* hello_thread (void *args)
{
    printf("Hello from thread \n");
    return NULL;
}

int main ()
{
    pthread_t t;
    if (pthread_create(&t, NULL, hello_thread, NULL) < 0) {
        perror("error happened while pthread_create");
        exit(-1);
    }

    pthread_join(t, NULL);
    return 0;
}
