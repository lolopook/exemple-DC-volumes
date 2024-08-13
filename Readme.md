
---

# Exemple de Docker Compose avec Volumes et Base de Données

Ce dépôt GitHub contient un projet de démonstration qui utilise Docker Compose pour orchestrer plusieurs services, dont une application web PHP, une base de données MySQL, et phpMyAdmin pour la gestion de la base de données.

## Structure du Projet

- `docker-compose.yml` : Fichier de configuration qui définit les services Docker, les ports, les volumes, et d'autres paramètres nécessaires à l'orchestration.
- `Dockerfile` : Fichier utilisé pour construire l'image Docker de l'application web.
- `index.php` : Fichier PHP principal qui affiche les données de la base de données dans un tableau HTML.
- `artists.sql` : Script SQL qui initialise la base de données `artists` avec la structure de la table et les données initiales.

## Configuration des Services

### Web

- **Image** : Construite à partir de `php:8.2-apache`.
- **Ports** : Le service web est accessible via le port 80.
- **Volumes** : Le code de l'application est stocké dans un volume monté sur `/var/www/html`.

### Base de Données (MySQL)

- **Image** : `mysql:8.0`.
- **Configuration** : Utilise `mysql_native_password` pour l'authentification.
- **Ports** : Accessible via le port 3306.
- **Volumes** : Les données sont persistées dans `./data`, et les scripts d'initialisation sont dans `./docker-entrypoint-initdb.d`.

### phpMyAdmin

- **Image** : `phpmyadmin/phpmyadmin`.
- **Configuration** : Connecté au service MySQL.
- **Ports** : Accessible via le port 8888.

## Démarrage rapide

Pour lancer l'ensemble de l'environnement, assurez-vous que Docker et Docker Compose sont installés sur votre système, puis exécutez :

```bash
docker-compose up -d
```

Pour arrêter et nettoyer les services, utilisez :

```bash
docker-compose down
```

## Bonnes Pratiques de Sécurité Non Appliquées

1. **Sécurité des Mots de Passe** : Les mots de passe sont définis directement dans le `docker-compose.yml`, ce qui n'est pas sécurisé pour la production. Utilisez des secrets Docker ou des variables d'environnement externes.
  
2. **Utilisation de Versions Spécifiques d'Images** : Toujours utiliser des versions spécifiques plutôt que `latest` pour éviter des surprises lors des mises à jour automatiques des images.

3. **Exposition des Ports** : Le port de MySQL est exposé sur l'hôte dans ce projet. En production, limitez l'accès aux ports seulement aux services qui en ont besoin.

4. **Permissions des Scripts SQL** : Assurez-vous que les scripts SQL n'ont pas de permissions trop larges, pour éviter toute modification non autorisée.

5. **Nettoyage des Images** : Après les tests, toujours nettoyer les images non utilisées pour éviter de conserver des vulnérabilités sur le système hôte.

## Conclusion

Ce projet est une introduction à l'utilisation de Docker Compose pour orchestrer une application multi-conteneurs, illustrant l'interaction entre une application web, une base de données, et phpMyAdmin. Il est essentiel de renforcer la sécurité avant de déployer une telle configuration en production.

open-ai-Readme