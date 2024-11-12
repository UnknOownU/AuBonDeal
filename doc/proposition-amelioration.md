# Améliorations pour la Base de Données d'AuBonDeal

## Introduction

Cette section présente des améliorations à apporter à la base de données *AuBonDeal* en tenant compte des exigences de sécurité, de performance et de facilité de maintenance. Nous nous basons ici sur une analyse des modèles conceptuels (MCD) et logiques (MLD) existants et sur les bonnes pratiques pour une application de type e-commerce.

## 1. Gestion des Rôles et des Permissions

### Problématique
Dans la version actuelle, il n’y a pas de structure claire permettant de définir des rôles pour chaque utilisateur, ce qui limite la gestion des permissions et la sécurité des accès. Pour un système e-commerce, il est essentiel de distinguer différents types d'utilisateurs (administrateur, vendeur, acheteur, etc.) et de restreindre les actions possibles pour chaque rôle.

### Solution proposée
Ajouter une **table `Roles`** et une **table `UserRoles`** pour gérer les relations entre utilisateurs et rôles. Voici les modifications proposées :

- **Table `Roles`** : Contient les différents rôles disponibles dans le système.
  - **Champs** : `role_id`, `role_name`, `description`
  - **Exemples de rôles** : `Admin`, `Vendeur`, `Acheteur`
- **Table `UserRoles`** : Table de liaison entre `Users` et `Roles`, pour gérer les rôles multiples par utilisateur.
  - **Champs** : `user_id`, `role_id`

### Schéma des nouvelles tables

```
Roles
------
role_id (PK)
role_name (varchar)
description (text)

UserRoles
---------
user_id (FK -> Users.user_UUID)
role_id (FK -> Roles.role_id)
```

### Avantages
- Permet une gestion fine des permissions par rôle.
- Facilite l'ajout futur de nouveaux rôles.
- Améliore la sécurité de l'application en limitant les actions par rôle.

---

## 2. Amélioration des Relations dans le MCD et le MLD

### Problématique
Certaines relations entre entités dans le MCD actuel pourraient être clarifiées pour éviter les redondances et les incohérences. Par exemple, la relation entre `Orders` et `Users` ne spécifie pas s’il est possible d’avoir plusieurs vendeurs ou acheteurs pour une même commande.

### Solution proposée
- **Clarifier la relation `Users` - `Orders`** : Préciser que `Orders` est lié à un seul acheteur (un utilisateur par commande) mais que chaque utilisateur peut avoir plusieurs commandes.
- **Lien entre `Products` et `Categories`** : Si les produits sont classés par catégories, ajouter une table `Categories` et relier les produits à leur catégorie. Cela facilitera la gestion et la recherche de produits par catégorie.
  
### Schéma de la table `Categories`

```
Categories
-----------
category_id (PK)
category_name (varchar)
description (text)

Products
---------
product_id
...
category_id (FK -> Categories.category_id)
```

### Avantages
- Améliore la clarté et la cohérence des relations dans la base de données.
- Rend le modèle plus intuitif et conforme aux normes e-commerce.
- Facilite les opérations de recherche et de gestion des produits.

---

## 3. Optimisation des Index et des Performances

### Problématique
Les requêtes de recherche et de filtrage (comme la recherche de produits ou la liste des commandes d'un utilisateur) peuvent devenir coûteuses en termes de performances avec une grande quantité de données.

### Solution proposée
- **Index sur les colonnes fréquemment utilisées** : Ajouter des index sur les colonnes comme `username` (dans `Users`), `product_name` (dans `Products`), et `order_date` (dans `Orders`).
- **Index sur les clés étrangères** : Pour optimiser les jointures, ajouter des index sur les colonnes de clés étrangères (`user_id`, `category_id`, etc.).

### Avantages
- Améliore les performances des requêtes de recherche et des jointures.
- Réduit le temps de réponse pour les opérations critiques, améliorant l'expérience utilisateur.

---

## 4. Historisation des Données

### Problématique
Les données critiques (comme les prix des produits et les commandes) doivent être historisées pour permettre un suivi des modifications, ce qui est essentiel pour la transparence et pour respecter les bonnes pratiques e-commerce.

### Solution proposée
- **Tables d'historique** : Créer des tables de suivi pour `Orders` et `Products` avec des colonnes pour enregistrer les modifications.
- **Suivi des prix dans `ProductsHistory`** : Enregistrer chaque modification de prix ou de stock dans une table dédiée avec un horodatage pour le suivi des changements.
  
### Schéma de la table `ProductsHistory`

```
ProductsHistory
---------------
history_id (PK)
product_id (FK -> Products.product_id)
price
stock
updated_at (timestamp)
```

### Avantages
- Permet de retrouver facilement les données passées en cas de litige ou d’analyse.
- Améliore la transparence pour les utilisateurs et les administrateurs.
- Facilite les audits et les analyses des tendances de vente.