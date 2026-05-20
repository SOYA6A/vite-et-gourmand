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
Modifiez le fichier `.env` avec vos informations :
DB_HOST=localhost
DB_NAME=vite_gourmand
DB_USER=root
DB_PASS=

### 4. Lancer le projet

Placez le projet dans le dossier `htdocs` de XAMPP ou `www` de MAMP, puis accédez à :
http://localhost/vite-et-gourmand/public

## Comptes de test

| Rôle | Email | Mot de passe |
|---|---|---|
| Administrateur | julie@vite-gourmand.fr | Password1! |
| Employé | jose@vite-gourmand.fr | Password1! |
| Utilisateur | alice@gmail.com | Password1! |

## Structure du projet
vite-et-gourmand/
├── public/          ← Point d'entrée (CSS, JS, images)
├── src/
│   ├── controllers/ ← Logique métier
│   ├── models/      ← Accès base de données
│   └── views/       ← Templates HTML
├── database/
│   ├── schema.sql   ← Création des tables
│   └── fixtures.sql ← Données de test
└── docs/            ← Documentation PDF
## Branches Git

- `main` — code final stable
- `develop` — branche de développement
- `feat/xxx` — une branche par fonctionnalité

## Auteur

**SOYA6A** — Projet ECF TP Développeur Web et Web Mobile — Studi 2026
