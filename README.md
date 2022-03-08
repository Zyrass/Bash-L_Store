# Script Shell part Zyrass

Ici il est question de créer un script shell pour une ré-installation de plusieurs programmes pour une
quelconque distribution linux. 

Tout ce que j'ai fais c'est grâce à 90% des cours suivie sur Dyma.FR.

## A venir

  1. Mise en place d'un début de fonctionnement pour installer Android-Studio (le tout totalement automatisé)
     - [X] - Téléchargement de l'archive
     - [] - Vérification si le dossier Archive existe
       - [] - Si oui, on supprimera tout ce qu'il y a dedans
       - [] - Sinon on créera le répertoire
     - [X] - Extraction de l'archive ~/Android/
     - [X] - Création d'un alias Android dans le fichier bashrc
     - [] - Ajout d'un message pour se créer un raccourcie
     - Check la version d'android
     - [X] - Suppression de l'archive téléchargé
  
## Changelog

  - **08/03/2022**
    - [X] - Ajout du logo Apple
    - [X] - Ajout du logo Ubuntu
    - [X] - Modification de la présentation avec ajout du logo selon le système d'exploitation.
    - [X] - Modification des textes de la présentation et ajout de quelques couleurs supplémentaire.
    - [X] - Début d'une correction orthographique
    - [X] - Ajout d'un message demandant de passer en pleine écran pour une meilleure expérience.
    - [X] - Ajout du programme Spectacle

  - **07/03/2022**
    - [X] - Suppression de trois appels de fonction pour créer un espace après l'exécution du chargement.
    - [X] - Ajout d'un .gitignore
      - [X] - Ajout du fichier ***android-studio-2021.1.1.22-linux.tar.gz*** télécharger
    - [ ] - Ajout d'Android-Studio dans les application (19)
      - [X] - Partie installation.
      - [X] - Partie Désinstallation.
      - [ ] - Afficher si Android est bien installé.
      - [ ] - Afficher les lignes de code à utilisé lors de l'installation et la suppression.
    
  - **01/03/2022**
    - [X] - Refactorisation du script.
    - [X] - Passage de tout les logos en GRAS
    - [X] - Modification de l'installation de PHP 8.0 pour PHP 8.1
    - [X] - Ajout du fonctionnement pour l'installation et la suppression sur 3 ***technologies:***
      - [X] - Symfony CLI (V15)
      - [X] - Angular CLI (V13)
      - [X] - TypeScript

  - **28/02/2022**
    - [X] - Adaptation du Logo Dyma pour un écran 4/3
    - [X] - Optimisation du menu accueil pour justement prévenir des applications encore en test ou pas encore codé.
    - [X] - Suppression de Sublime-Text (*Vs Code étant le plus utilisé, c'est inutiel d'en avoir un autre*)
    - [X] - Correction du message de confirmation pour la désinstallation. (Avant c'était inscrit : "installation" au lieu de "désinstallation")
    - [X] -  Ajout du fonctionnement pour toutes les installations et suppression des applications
    - [X] - Ajout du logo Workbench

  - **26/02/2022**  
    - [X] - Modification du menu afin de switcher plus facilement dans les pages.
    - [X] - Mise à jour du README pour y inclure le changelog
    - [X] - Ajout du gras sur le logo de Dyma.
    - [X] - Suppression de l'image accueil pour la ré-upload avec la bonne image du logo Dymaxdg
    - [X] - Ajout des descriptions pour tout les programmes

---

## Exemple du rendu actuel

> Quelques petites modifications peuvent avoir lieu. (Couleur, texte etc..)<br>
> En revanche on s'approche énormément du rendu final (60% ~)

![alt text](https://github.com/Zyrass/script_shell_perso/blob/master/images/accueil.png?raw=true)

![alt text](https://github.com/Zyrass/script_shell_perso/blob/master/images/presentation.png?raw=true)

![alt text](https://github.com/Zyrass/script_shell_perso/blob/master/images/menu_accueil.png?raw=true)

![alt text](https://github.com/Zyrass/script_shell_perso/blob/master/images/exemple.png?raw=true)

![alt text](https://github.com/Zyrass/script_shell_perso/blob/master/images/choix-15.png?raw=true)

![alt text](https://github.com/Zyrass/script_shell_perso/blob/master/images/quitter.png?raw=true)