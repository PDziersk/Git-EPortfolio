# Git-EPortfolio

Files for my ePortfolio about revision control systems and the benefit of using git.

#### Following commands will be reviewed throughout the Hands-On:


Configure your local git application, will be used for reference in the repository

```console
user@machine:~$ git config --global user.name "Firstname Lastname"
user@machine:~$ git config --global user.email "user@mail.com"
```

Create an empty folder and initialise a new git repository
```console
user@machine:~$ mkdir gitexample
user@machine:~$ cd ./gitexample
user@machine:~$ git init
```

Create a hello world program in C, nothng serious just an example.
```console
user@machine:~$ touch main.c
user@machine:~$ nano main.c
```
Write into the file:
```
#include <stdio.h>

int main() {
   printf("Hello World!\n");
   return 0;
}
```
