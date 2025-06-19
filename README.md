# Retro Programmers United For Obscure Systems
---

## Introduction

### RPUFOS

Retro Programmers United For Obscure Systems.\
The group's goal is to expand, as much as possible, the libraries of forgotten computers.\
Especially those that, for example, no one has heard of or that have a very limited software library.\
See below the list we made.

### Origin of the Game Jam concept

Games Jam were launched by Olipix.\
See their YouTube video channel.\
[French](https://www.youtube.com/@Olipix)\
[English](https://www.youtube.com/@OlipixRetrotech)

### Work only on

This GitHub project is solely dedicated to adapting the compilations created by David H. Ahl.\
Published in the books:

* 101 Basic Games (DEC)(1975), Applicable only to those excluded from the 1978 edition and beyond
* Basic Computer Games (1978)
* More Basic Computer Games (1979)
* Computer in Mathematics (1979)
* COmputer in Science and Social Studies (1983)
* Big Computer Games (1984) (Orwell is here)
* Basic Computer Adventure Games (1986)

Each book has its own directory.
In each one, there is the source code and as many directories as there are machines on which the program has been adapted.

There are probably other resources by David H. Ahl that haven't been published in books, especially in Creative Computing magazine (Ahl Computing, Inc.). Books are generally a compilation of this magazine.

#### Archive.org

French version of More Basic Computer Games:\
[Nouveaux jeux d'ordinateur en BASIC](https://archive.org/details/nouveaux-jeux-d-ordinateur-en-basicacme/mode/2up)\
This book comes from this site (https://acpc.me/), where you can find a lot of things, despite the fact that it is dedicated to AMSTRAD.


Other books:\
[Getting Started in Classroom-computing (1974)](
https://archive.org/details/getting-started-in-classroom-computing-ahl-1974/mode/2up)



### On itch.io

Of course, the RPUFOS group is also working on other projects.
The software produced can be found on itch.io.

TO DO.


## How to make the adaptations

For each adaptation, it is necessary to ensure that:

* Preserve the original source code. The new source codes must go into their respective directories.
* That there are no more bugs in the program.
* Adapt as best as possible to the target machine's BASIC. If the Basic language is used.
* Explain the program in comments for learning purposes.
* Ensure that answers to questions or other matters are not case-sensitive.
* Using another language (Z80 Assembly, for example) is allowed, but the source code must be provided and comply with the rules.
* It is also necessary to produce the appropriate files, such as disk images, etc.

If you have made adaptations to Obscure Systems, we are interested in them.

Sometimes, it turns out that adapting the program isn’t possible due to technical reasons.\
Example:
* Lack of memory.
* Issues with variables (e.g., PHC-25).

In most cases, brute-force insertion allows the program to run directly. The next step is simply making it more refined and elegant.

## Naming for final work

To ensure proper file naming, it is preferable to follow the TOSEC convention, so that these adaptations are properly cataloged.

https://www.tosecdev.org/

Examples for PHC-25:

```
Acey Ducey (19xx)(David H. Ahl)(US)(en)(PD).phc
Acey Ducey (19xx)(David H. Ahl)(US)(en)(PD).wav

Orient Express, The (1986)(David H. Ahl)(US)(en)(PD).phc
Orient Express, The (1986)(David H. Ahl)(US)(en)(PD).wav

```
(US): Country\
(en): language\
(PD): Apparently, all programs are considered to be in the public domain.\

French versions of the books exist, and the programs can easily be translated into any language.
So specifying the language is required.

## Ressources

### Simple documentations For Obsure Systems

Check directories:

* [Matra Alice](./Matra-Alice)
* [Mattel Aquarius](./Mattel-Aquarius)
* [Micronique Hector Victor HR](./Micronique-Hector-Victor-HR)
* [Philips VG5000](./Philips-VG5000)
* [Sanyo PHC-25](./Sanyo-PHC-25)


### RENUM How To

Programming on old systems can be complex.
Nowadays, we usually go through an intermediate system like Notepad++ or Visual Studio.
However, renumbering BASIC line numbers turns out to be a real hassle.

This will prove very useful, especially for Obscure Systems that do not have this feature.

A renumbering solution:\
https://github.com/katahiromz/renum

```cmd
renum -i program.bas -o new_program.bas --new-start 100 --step 20
```

### Adaptations ressources found

See this:\
https://github.com/coding-horror/basic-computer-games

These are not Obscure Systems, but this can help with adaptations.

Atari:\
https://github.com/jeffpiep/Atari-Basic-Computer-Games

C64 Basic:\
https://retrogamestart.com/answers/learn-commodore-64-basic-programming-type-text-based-games

C and CPC 464:\
https://github.com/stroucki/BasicComputerGames

### Other

The site of the robot designer.\
http://www.bekerbots.com/

