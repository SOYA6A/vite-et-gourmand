# vite-et-gourmand 🍽️
Application web de commande de menus traiteur pour l'entreprise Vite & Gourmand, basée à Bordeaux.
## Stack technique

- **Front** : HTML5, CSS3, JavaScript
- **Back** : PHP 8 avec PDO
- **Base de données relationnelle** : MySQL
- **Base de données NoSQL** : MongoDB
- **Déploiement** : fly.io
## Prérequis

Avant de lancer le projet en local, installer:

- PHP 8 ou supérieur
- MySQL 8 ou supérieur
- Un serveur local (XAMPP, MAMP ou Laragon)
- Composer (gestionnaire de dépendances PHP)

## Installation en local

### 1. Cloner le projet

```bash
git clone https://github.com/SOYA6A/vite-et-gourmand.git
cd vite-et-gourmand
```

### 2. Créer la base de données

Ouvrez phpMyAdmin ou votre client MySQL et exécutez les fichiers dans cet ordre :

```bash
mysql -u root -p < database/schema.sql
mysql -u root -p < database/fixtures.sql
```

### 3. Configurer l'environnement

Copiez le fichier `.env.example` et renommez-le `.env` :

```bash
cp .env.example .env
```
