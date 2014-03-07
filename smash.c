#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int smashable(char* s) {
    /** We will let brian show us how this can be usfull **/
    char val[10];
    strcpy(val,s);
    printf("Loaded\n");
}

int unreachabl() {
    printf("You Win!\n");
}

int main(int argc, char **argv) {
    if(argc != 2) return 1;
    smashable(argv[1]);
    return 1;
}
