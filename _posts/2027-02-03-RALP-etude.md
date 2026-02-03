---
title: "RALP : Langage machine en REM pour Obscure Systems"
author: VincentD
excerpt: "Le langage machine mis dans n'importe quelle ligne REM."
type: Software
---

## Introduction

Reprise du principe évoqué précédement concernant RALP, un article de Micro Systèmes
explicant comment positionner un programme en langage machine dans n'importe quelle ligne REM.

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


à compléter.


## Utilité

- Pour tout programme ayant besoin de LM pour accélérer le code.
- Pour calcul en LM avec ou sans paramètre
- Scroll écran pour jeu en BASIC
- etc.


## Mise en pratique

### Sur la première ligne

```basic
10 REM 0123456789....
....
```

Chaque caractère après le REM est une reservation de place de 1 Octet.

EXEC &Hnnnn va lancer le LM.

Via des POKE, il est possible de passer des paramètres.\
Via PEEK récupération d'un résultat.


Lorsque on fait un LIST du programme après encodage du programme, l'afichage sera surprenant et va dépendre des ordinateurs.






