#include <stdio.h>
#include <stdbool.h>
#include <string.h>

_Bool
verify_password
(
    char *passwd
)
{
 if (strcmp(passwd, "nevertrustuserinput") == 0)
    return true;
 else
    return false;
}


int
main
(
    int argc,
    char *argv[]
)
{
    _Bool trusted_user = false;
    char password[32];

    strcpy (password, argv[1]);
    if(verify_password(password))
    {
        trusted_user = true;
    }

    if(trusted_user)
        fprintf(stdout, "Congratulations, enjoy a cookie.\n");
    else
        fprintf(stdout, "Who are you and what is your quest?\n");


    return 0;
}
