GIT_VERSION := "$(shell git describe --always --tags --dirty --abbrev=40)"

main: main.c
	gcc main.c -o ./app -DVERSION=\"$(GIT_VERSION)\"
