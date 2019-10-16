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
user@machine:~$ cd ./Documents
user@machine:~/Documents$ mkdir gitexample
user@machine:~/Documents$ cd ./gitexample
user@machine:~/Documents/gitexample$ git init
Initialized empty Git repository in /home/pascal/Documents/gitexample/.git/
```

Create a hello world program in C, nothng serious just an example.
```console
user@machine:~/Documents/gitexample$ touch main.c
user@machine:~/Documents/gitexample$ nano main.c
```
Write into the file:
```c
#include <stdio.h>

int main() {
   printf("Hello World!\n");
   return 0;
}
```
You can save the file with Ctrl+O or in newer versions with Ctrl+S and exit the windows with Ctrl+X

Now you can check the status with git:
```console
user@machine:~/Documents/gitexample$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	main.c

nothing added to commit but untracked files present (use "git add" to track)
```

In the next step we can add the file into the staging area:
```console
user@machine:~/Documents/gitexample$ git add main.c
user@machine:~/Documents/gitexample$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

	new file:   main.c
```
