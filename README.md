<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->

## Description
Ce plugin freebox, permet de contrôler votre freebox à la voix. VOus pouvez donc effectuer presque toutes les mêmes opérations qu'avec la télécommande
   - Changer de chaine
   - Eteindre / Allumer la tele
   - Gérer le son (Bas, Normal ou Haut)
   - Et d'autres

NB1: D'autres fonctionnalités viendront au fur et à mesure (votre contribution est la bienvenue)

NB2: * signifie n'importe quel mot à cet endroit

VERSION: V0.4


## Usage
```
Vous: `CONTROLE *KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Commencer à intéragir avec KODI)
Vous: `*BAS*` (Dirige vers le bas)
Vous: `*HAUT*` (Dirige vers le haut)
Vous: `*GAUCHE*` (Dirige vers la gauche)
Vous: `*DROITE*` (Dirige vers la droite)
Vous: `*VOLUME*FAIBLE*` (Met le volume a 25 pourcents)
Vous: `*VOLUME*NORMAL*` (Met le volume a 50 pourcents)
Vous: `*VOLUME*FORT*` (Met le volume a 90 pourcents)
Vous: `*AFFICHE*INFORMATION*FILM*` (Affiche les informations relative au film )
Vous: `*CACHE*INFORMATION*FILM*` (Affiche les informations relative au film )
Vous: `*MUET*` (Coupe le son du film et de Kodi)
Vous: `*RETOUR*` (Revient en arrière de 1 cran dans le menu)
Vous: `*NON*MUET*` (Active à nouveau le son du film et de Kodi)
Vous: `*PAUSE*`
Vous: `*MENU*PRINCIPAL*` (Affiche le menu principal de Kodi)
Vous: `*LIRE* ou *REPRENDRE*` (Sort de pause un film)
Vous: `*ACTIVE*SOUS*TITRE*`
Vous: `*DESACTIVE*SOUS*TITRE*`
Vous: `*SOUS*TITRE*SUIVANT*` (Charge les sous-titres suivant du film si disponible)
Vous: `*VALIDE*` (Synonyme du OK)
Vous: `*PLEIN*ECRAN*` (Active et désactive le plein écran)
Vous: `*ARRET*` (Arrete la lecture du film)
Vous: `*AFFICHE*LISTE*FAVORI* (Affiche la liste des favoris)
Vous: `*LISTE*FILM*` (Ouvre la liste des films)
Vous: `*LISTE*MUSIQUE*` (Ouvre la liste des musiques)
Vous: `*LISTE*PHOTO*` (Ouvre la liste des photos)
Vous: `*AFFICHE*CODEC*VIDEO*` (Affiche les informations techniques de la vidéo)
Vous: `*CACHE*CODEC*VIDEO*` (Cache les informations techniques de la vidéo)
Vous: `*MET*A*JOUR*MEDIATHEQUE*VIDEO*` (Ajoute les nouveaux films et épisodes)
Vous: `*NETTOYAGE*MEDIATHEQUE*VIDEO*` (Supprime les films et épisodes qui n'existent plus)
Vous: `*MET*A*JOUR*MEDIATHEQUE*MUSIQUE*` (Ajoute les nouvelles musiques)
Vous: `*NETTOYAGE*MEDIATHEQUE*MUSIQUE*` (Supprime les anciennes musiques inexistantes)
Vous: `*AFFICHE*OSD*`
Vous: `*CACHE*OSD*`
Vous: `*PISTE*SUIVANTE*` (Piste de musique suivante si disponible)
Vous: `*PISTE*PRECEDENTE*` (Piste de musique précedente si disponible)
Vous: `*LANCE*FILM (LE NOM DU FILM)*` (Lancer un film en donnant son nom / mot clé)
Vous: `*LANCE * SERIE (LE NOM DE LA SERIE)* SAISON (LE NUMERO DE LA SAISON)* EPISODE (LE NUMERO DE L'EPISODE)*` (Lancer un épisode de série en donnant son nom / mot clé puis le numéro de la saison puis l'épisode souhaité)
Vous: `*LANCE PLUGIN (NOM DU PLUGIN)*|*EXECUTE PLUGIN (NOM DU PLUGIN) (Lance un plugin)
Vous: `TERMINE*AVEC*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Termine l'intéraction avec KODI)
Vous: `*RELANCE*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet d'arreter le processus Kodi actuel et d'en relancer un nouveau)
Vous: `*QUITTE*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet de quitter Kodi)
Vous: `*LANCE*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet de lancer Kodi si celui ci n'est pas encore actif)
```


## Author & Contributors
Kévin CARADANT (kevin.caradant@gmail.com)
