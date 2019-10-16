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

Create a hello world program in C, nothing serious just an example:
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

After that we can commit the change into the repository:
```console
user@machine:~/Documents/gitexample$ git commit -m "Initial Commit"
[master (root-commit) ab45c5a] Initial Commit
 1 file changed, 6 insertions(+)
 create mode 100644 main.c
```

With following command, you can now see the history:
```console
user@machine:~/Documents/gitexample$ git log
commit ab45c5abf4cfc574c6c5b43d24a71bc6f458194c (HEAD -> master)
Author: Firstname Lastname <user@mail.com>
Date:   Wed Oct 16 19:32:10 2019 +0200

    Initial Commit

```

Now we can create a new branch and switch to it with:
```console
user@machine:~/Documents/gitexample$ git branch new-feature-xyz
user@machine:~/Documents/gitexample$ git checkout new-feature-xyz
Switched to branch 'new-feature-xyz'
```

Next change the program to:
```c
#include <stdio.h>

int main() {
   printf("Hello World!\n");
   printf("Created by someone!\n");
   return 0;
}
```

And add it to your repository:
```console
user@machine:~/Documents/gitexample$ git add main.c
[...]
user@machine:~/Documents/gitexample$ git commit -m "Added author"
[...]
```

After that you can switch to your default branch called master and merge the content:
```console
user@machine:~/Documents/gitexample$ git checkout master
Switched to branch 'master'
user@machine:~/Documents/gitexample$ git merge new-feature-xyz
Updating 02fa935..0251570
Fast-forward
 main.c | 2 +-
 1 file changed, 1 insertion(+)
```
