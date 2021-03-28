# Projet Grails
## Groupe 4

- 25 RAKOTOHANITRINIAINA Maharo Rivomahefa
- 35 RANARIVELO Voahangy Antsa
- 56 RAZAIHARINOSY Hanitriniaina Olivia
- 60 ZAORA ZULMIANAH Anah
    
## TABLE DES MATIÈRES
- [Backend](## Backend)
- [API REST](## API REST)
- [DEPLOIEMENT](## DEPLOIEMENT)

## Backend
- Une couche de sécurité est ajoutée afin d’empêcher l’accès à la partie backend sans identifiants
- Les comptes utilisateurs peuvent avoir 3 rôles différents
    - ADMIN
    - MODERATOR
    - CLIENT
- L’administrateur et le modérateur pourront tous deux accéder au backend
- Le rôle CLIENT ne pourra pas acceder au backend
- Au delà des utilisateurs (User) qui seront liés à des rôles (Role) pour la sécurité, votre modèle de donnée permettra de gérer des annonces  et leurs illustrations
- Toutes les opérations de CRUD seront disponible sur les entités représentant
    - Les utilisateurs
    - Les annonces
    - Les illustrations n’auront pas de gestion indépendante, elles seront simplement modifiable dans les annonces
- Les comptes utilisateurs peuvent S’identifier et Se déconnecter
- Créer / Visualiser / Mettre à jour / Supprimer
    - Une annonce
    - Un utilisateur
- Créer un moteur de recherche simple qui sera lié à une barre de recherche pour pouvoir
filtrer les annonces sur leurs titre / descriptions

## API REST
- Une sécurité pour l’API Rest est mise en place
- L’API Rest est disponible sur l'adresse, https://grails-itu-mbds-groupe-4.herokuapp.com/api/
- L’API a entièrement ete réalisée avec nos petites mains.
- L’API est capable de renvoyer du JSON ou du XML en fonction des paramètres d’appel (header Accept)
- L’API prends en charge les méthodes 
    - Annonce
        - GET
        - PUT
        - PATCH
        - DELETE
    - Annonces
        - GET
        - POST
    - User
        - GET
        - PUT
        - PATCH
        - DELETE
    - Users
        - GET
        - POST
- La collection POSTMAN : 
    - [Collection Locale](https://gitlab.com/zulmianah/grails-itu-mbds-groupe-4/-/blob/master/postman/groupe%204%20local.postman_collection.json)
    - [Collection heroku](https://gitlab.com/zulmianah/grails-itu-mbds-groupe-4/-/blob/master/postman/groupe%204%20heroku.postman_collection.json)

## DEPLOIEMENT
- Notre solution en ligne est deployee sur une plateforme Heroku
