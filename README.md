# AuBonDeal - Base de Données

**AuBonDeal** est une plateforme de commerce en ligne permettant la gestion des transactions commerciales, la mise en relation des vendeurs et acheteurs, et la gestion des produits. Ce dépôt contient la base de données relationnelle conçue pour cette plateforme, ainsi que des documents détaillant les choix de conception et les améliorations potentielles.

## Table des Matières
- [Introduction](#introduction)
- [Structure de la Base de Données](#structure-de-la-base-de-données)
- [Choix du SGBDR](#choix-du-sgbdr)
- [Améliorations suggérées pour la BDD](#améliorations-suggérées-pour-la-bdd)
- [Définition de MERISE](#définition-de-merise)
- [Installation et Sauvegarde](#installation-et-sauvegarde)
- [Contributions](#contributions)

---

## Introduction

Ce projet vise à fournir une base de données robuste et performante pour AuBonDeal. La structure de cette base a été réalisée en suivant les modèles conceptuels (MCD) et logiques (MLD) de données, dans le respect des bonnes pratiques de conception de bases de données relationnelles.

## Structure de la Base de Données

La base de données est organisée pour gérer les informations sur les utilisateurs, les produits, et les transactions de la plateforme. Les entités principales incluent `Users`, `Products`, `Orders`, et leurs relations. Les mots de passe sont stockés de manière sécurisée avec un hachage sécurisé (bcrypt via la fonction `crypt()`).

### Modèles de Données

- **Modèle Conceptuel des Données (MCD)** : Structure de haut niveau qui définit les principales entités et leurs relations.
- **Modèle Logique des Données (MLD)** : Traduction du MCD en tables et champs spécifiques pour la base de données PostgreSQL.

## Choix du SGBDR

Pour ce projet, **PostgreSQL** a été choisi comme SGBDR pour ses nombreux atouts. Voici les principales raisons de ce choix :

1. **Orienté objet avec support relationnel et non-relationnel**  
   PostgreSQL combine les avantages des bases de données relationnelles et des fonctionnalités orientées objet. Il prend également en charge les types de données non relationnels comme `JSON` et `JSONB`, permettant de gérer des données non structurées efficacement.

2. **Respect des propriétés ACID**  
   PostgreSQL garantit le respect des propriétés ACID (Atomicité, Cohérence, Isolation, Durabilité), rendant chaque transaction complète, cohérente, et isolée des autres. Cela en fait un excellent choix pour les applications critiques, notamment dans le domaine financier.

3. **Adapté aux entreprises financières**  
   Grâce à sa gestion des transactions conforme à ACID, PostgreSQL est souvent préféré par les entreprises financières, bancaires et de transactions. Sa robustesse et la possibilité de gérer des transactions sécurisées font de PostgreSQL un choix fiable pour ce secteur.

4. **Enorme communauté et support open-source**  
   La communauté PostgreSQL est active et propose de nombreuses extensions et ressources. Cela garantit un support pérenne, une amélioration continue, et une vaste documentation pour les utilisateurs.

5. **Gestion fine des rôles et des permissions**  
   PostgreSQL offre une gestion des rôles et des permissions très stricte, permettant de définir des droits d'accès granulaires. Cela permet de garantir la sécurité des données et de restreindre les actions disponibles pour chaque utilisateur ou rôle.

6. **Performance et évolutivité**  
   PostgreSQL est conçu pour les performances élevées et peut évoluer avec les besoins croissants des applications. Il dispose de fonctionnalités d'optimisation comme l'indexation avancée, le partitionnement, et la gestion de transactions multiples, ce qui permet de maintenir de bonnes performances, même avec de grands volumes de données.

## Définition de MERISE

**MERISE** est une méthode de modélisation des données et des traitements, principalement utilisée pour la conception de bases de données relationnelles. Elle se base sur deux types de modèles :
- **Modèle Conceptuel des Données (MCD)** : Décrit les entités et leurs relations sans entrer dans les détails techniques.
- **Modèle Logique des Données (MLD)** : Transforme le MCD en tables et champs adaptés aux bases de données relationnelles.

MERISE permet une séparation claire entre les aspects conceptuels et logiques, facilitant ainsi la conception, la maintenance, et l’évolution des systèmes d'information.

## Installation et Sauvegarde

### Installation de la Base de Données

1. Assurez-vous d'avoir PostgreSQL installé.
2. Créez la base de données en utilisant le fichier de création SQL fourni dans le répertoire `doc/BDD`.
3. Configurez les permissions et utilisateurs nécessaires (voir les détails dans le fichier SQL).

### Sauvegarde Automatique

**Tâche Cron** : La sauvegarde automatique est exécutée quotidiennement à 2h du matin. 
