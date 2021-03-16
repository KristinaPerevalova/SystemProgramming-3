FROM ubuntu
RUN apt update && apt install gcc -qy
COPY main.c main.c
RUN gcc -masm=intel main.c
CMD ./a.out
