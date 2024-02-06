# SameGame
Implementation du jeu SameGame par Wattebled Thomas, De Sainte Maresville Maxime, Javad.

# Installing the game in P11

```
Author fullName: 'No'.
Metacello new
	repository: 'github://Ducasse/Myg:v1.0.1/src';
	baseline: 'Myg';
	onConflictUseLoaded;
	load.
```

```
Metacello new
    baseline: 'SameGame';
    repository: 'github://Enzo-Demeulenaere/2023-SameGame:master/src';
    onConflictUseLoaded;
    load.
```

```
SameGameGraphic open
```

## Jouer au jeu

Pour jouer, il suffit de taper ```SameGame open ``` dans un PlayGround.

Les règles du jeu sont simples :
Il suffit de clicker sur les cases de couleur (rouge, bleu, verte, jaune) qui sont adjacentes à au moins une case de la même couleur. Celles-ci disparaîtront, la grille de jeu se réorganisera (décalage de bas en haut puis de droite à gauche), et le but est de n'avoir plus aucune case à la fin.

## Le code du jeu

Le code se trouvera dans le package "SameGame" avec les différentes parties rangées dans les tags suivants:
- Model (coeur du jeu)
- Model-Tests (tests du coeur du jeu)
- UI (partie graphique du jeu)
- UI-Tests (tests de la partie graphique du jeu)

# Implementation

## Les classes

Côté coeur du jeu, nous avons une classe Board (représentant le board du jeu) qui hérite notamment de MygBoard pour hériter de son API. Une NullCase (représentant une case) qui hérite de MygAbtractBox pour son API également, et ensuite des cases représentant chaque couleur qui vont hériter de NullCase car chaque couleur pourrait avoir un comportement différent (rapporte plus ou moins de points, possède bonus etc...). Nous avons ensuite la classe Game qui représente une partie.

Côté partie graphique, nous avons les classes SGBoardElement (représentant le board graphique) et SGCaseElement (représentant la case graphique) qui héritent de BlElement

C'est l'organisation qui nous paraissait la plus naturelle, car on retrouve pour chaque classe un élément principal du jeu (à savoir une partie, un board et des cases). La partie graphique suit la même organisation pour faciliter l'association coeur du jeu/partie graphique.

## Les design patterns

Pour les cases du côté du coeur du jeu, on retrouve le design Pattern NullPattern qui permet de faire la différence entre les cases cliquables et les non cliquables.

Nous avons également mis en place un double dispatch côté coeur du jeu pour le fonctionnement du hit d'une case, et ainsi de la propagation du hit des cases adjacentes.

## Les priorités

La priorité était tout d'abord d'avoir un coeur de jeu fonctionnel et de s'assurer que ce qui avait été fait marcherait toujours par la suite.
Ceci passe donc par la création de tests dans un premier temps, et de l'écriture du code pour répondre à ces tests.

Lorsque le coeur du jeu a été terminé, nous nous sommes penchés sur le fonctionnement de bloc et de son implémentation dans les différents jeux existants dans Myg pour créer la partie graphique.
Ici il était plus compliqué de faire du TDD, c'est pourquoi les tests ont été rédigés après.

## Les tests

Nous avons testés les fonctionnements absolument nécessaires au fonctionnement du jeu, notamment l'association graphique/coeur du jeu, la réorganisation du board, le clique sur une case...

Le coeur du jeu est ainsi plus testé car la partie graphique ne s'occupe que de "l'affichage" et donc pas du fonctionnement de celui-ci.
