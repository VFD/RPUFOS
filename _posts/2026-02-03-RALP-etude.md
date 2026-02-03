---
title: "RALP : Langage machine en REM pour Obscure Systems"
author: VincentD
excerpt: "Suite à l'article RALP, étude de méthodes LM sur BASIC."
type: Software
---

## Introduction

Reprise du principe évoqué précédement concernant RALP, un article de Micro Systèmes
expliquant comment positionner un programme en langage machine dans n'importe quelle ligne REM.

On tente de comprendre et de le faire sur nos Obscure Systems.

## Rappel

Suite à étude du BASIC du **PHC-25**, il s'avère que nous n'avons jamais réussi à faire fonctionner la fonction USR.
Donc la méthode permet de surmonter le problème.

L'encodage d'un programme full LM est possible sur **PHC-25**.

On utilise la première ligne comme lanceur.\
Le programme LM débute à l'adresse après la fin de la ligne 1.\
Le point d'entrée pouvant éventuelement être n'importe où.

Exemple :

```basic
10 EXEC &Hnnnn
....
```

Les principes sont aussi appliqués sur le **Canon X-07**.\
Les travaux du **Club C7** utilise cela abondament.


Autres possibilité selon les systèmes, c'est un chargement en plage mémoire vidéo, puis décompactage.

à compléter.


## Utilité

- Pour tout programme ayant besoin de LM pour accélérer le code.
- Pour calcul en LM avec ou sans paramètre
- Scroll écran pour jeu en BASIC
- etc.

Exemple à étudier sur le tirage aléatoire d'un nombre entier entre 0 et 255.
Voir Club C7.

<hr style="width:66%" />

## Mise en pratique du LM


### Technique RESTORE, READ, DATA et POKE

Classique avec les fonctions RESTORE, READ, DATA et POKE

- RESTORE n : pointeur vers la ligne DATA
- DATA nnnn : contient les codes hexa (nn) du LM (paquet de 16)
- READ : lecture DATA
- POKE : place l'octet à l'endroit spécifié

Concaténer les octets dans une ligne DATA peut faire gagner autour de 30% d'espace de code.

DATA 112233445566778899AABBCCDDEEFF\
vs\
DATA 11,22,33,44,55,66,77,88,99,AA,BB,CC,DD,EE,FF

14 octets de moins par ligne DATA.\
On ne s'attarde pas c'est une technique éprouvée.\
Un test cependant à faire c'est le RESTORE N, N étant une variable contenant le numéro de ligne.

On ne reviendra pas sur cette méthode.


### Technique de la ligne REM

Classique sur ce type de machine (issue notablement du ZX81).\
On se reserve la première ligne du code Basic pour y loger le LM.\
Nécessite un programme chargeur.\
Ou équivalent avec les techniques modernes. Hexa edition direct par exemple pour du code court.

```basic
0 REM 0123456789
1 EXEC &HC003
```
Les caractères après REM doivent être en nombre nécessaire (longueur du code LM).\
Exemple : &hc003 est l'adresse du 1er octet du code LM soit le "0" (PHC-25).

Technique inverse.

```basic
0 EXEC &Hnnnn
1 REM 0123456789
```
La ligne 1 est optionnel. Le LM peut être forcé à l'adresse.

&Hnnnn : point d'entrée du LM.

Prévoir le ORG &hnnnn lors de la compilation.

C'est le principe utilisé par les RPUFOS, issu du programmeur japonais ????.

Pas encore vue sur Canon X-07. C'est donc à tester.

### Sous programme en REM

Pour une sous routine avec paramètres.

```basic
0 REM 0123456789
1 REM LM sous-routine
...
100 POKE &HC003,0 : POKE &HC004,255 : ...
110 EXEC &Hcnnn
...
```

La ligne 0 contient des Octets de paramètres.

&Hcnnn : Point d'entrée de la sous routine ASM.

Par exemple pour faire du calcul, scroll écran.\
Plusieurs paramètres sont possibles, dépand du nombre d'octets réservés.

```asm
	LD (A), &hC003
	...
```
On poke en &hc003.

En retour.

```asm
	LD &hC003,A
	...
```

On fait un PEEK du &hc003 pour obtenir le résultat, entier [0-255].


### Technique d'écrasement DATA à expérimenter

Plus complexe.\
Déterminer la position en mémoire d'une ligne REM.\
Derrière des DATA.\
Avec le READ, faire un POKE à partir de la ligne REM.

Coder par POKE la fin de programme avant ?\
Même si celà semble peu pertinant.\
NB : à cause d'un éventuel CSAVE ?

Prévoir un flag P pour éviter le GOSUB 1000.

La ligne 60000 doit contenir pour elle même au moins 16 octets.\
Octets qui viennent de la première ligne DATA (écrasement).\
Ensuite c'est bon.

Le LM vient donc se loger à la place des lignes DATA.

```basic
...
1000 RESTORE 60010
1010 ...
...
1100 READ A$ ...
1110 POKE &hnnn, valeur
...
60000 REM XXXXXXXXXXXXXXXX
60010 DATA
```

NDR : Pas encore testé, expérimentations à faire.

Si ne fonctionne pas, genre le PC ne trouve pas la DATA suivante car on a écraser les lignes.

Mode inverse.

```basic
...
1000 RESTORE 60010
1010 ...
...
1100 READ A$ ...
1110 POKE &hnnn, valeur
...
60900 DATA ....
61000 REM XXXXXXXXXXXXXXXX
```
On part à l'envers.\
Compliqué car un RESTORE N; avec N variable ne fonctionne pas forcément (faire les tests).
Sauf si hack peut-être - POKE du numéro de ligne après le restore.

Mais il faut l'adresse de la ligne.


La suite au prochain épisode... Chaque système ayant son modus operandi.
