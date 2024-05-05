FORMAT := NTSC

NAME := SecretCollect-$(FORMAT)

OUT := $(NAME).a26

SOURCE := secretcollect.a

BINFORMAT := 3

build:
	dasm $(SOURCE) -o$(OUT) -f$(BINFORMAT) -s$(NAME).sym -l$(NAME).lst

buildandrun: build
	stella $(OUT)

clean:
	rm -rfv *.bin *.lst *.sym *.a26 src/bin/