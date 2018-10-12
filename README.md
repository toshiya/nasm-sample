# nasm-sample

- [NASM Document](https://www.nasm.us/doc/nasmdoc0.html)
- [Tutorial](http://cs.lmu.edu/~ray/notes/nasmtutorial/)
- [AMD 64 Calling Convetion Cheat Sheat](https://courses.cs.washington.edu/courses/cse378/10au/sections/Section1_recap.pdf)

## Setup On OSX

nasm can be installed with brew !!!

```
brew install nasm
```

## Compile & Execute

```
nasm -f macho64 fib.asm
clang fib.o -o fib
./fib 10
```
