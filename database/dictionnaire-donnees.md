Un **dictionnaire de données** est un document qui décrit en détail les structures de données d'une base de données. Il sert de référence pour les développeurs, les analystes et les autres parties prenantes pour comprendre les informations stockées et leur organisation. Il inclut la définition des tables, des champs, des types de données, des contraintes, et des relations entre les entités. Le dictionnaire de données permet de normaliser la compréhension des données et de faciliter leur utilisation et leur maintenance.

### Étapes pour créer un dictionnaire de données

1. **Lister les tables** : À partir du Modèle Conceptuel de Données (MCD) et du Modèle Logique de Données (MLD), identifiez toutes les tables présentes dans la base de données.

2. **Définir les colonnes de chaque table** :
   - Pour chaque table, listez les colonnes.
   - Indiquez le type de données pour chaque colonne (par exemple, `VARCHAR`, `INT`, `DATE`, etc.).
   - Précisez la taille des champs si nécessaire (par exemple, `VARCHAR(255)`).

3. **Identifier les clés** :
   - Marquez la clé primaire de chaque table.
   - Indiquez les clés étrangères et les tables de référence.

4. **Ajouter des descriptions** :
   - Fournissez une description pour chaque table et colonne. La description doit expliquer l'utilité des données stockées et leur contexte.

5. **Indiquer les contraintes** :
   - Spécifiez les contraintes pour chaque champ, comme les `NOT NULL`, `UNIQUE`, ou les contraintes de `CHECK` si elles sont définies.

6. **Décrire les relations entre les tables** :
   - Expliquez les relations entre les tables (par exemple, 1:1, 1:N, N:M).
   - Indiquez les tables de liaison si des relations `N:M` sont présentes, en précisant les clés étrangères qu'elles contiennent.

### Dictionnaire de données du site e-commerce AuBonDeal

#### Table : `Users`

| Nom de la colonne  | Type         | Clé          | Description                                      |
|--------------------|--------------|--------------|--------------------------------------------------|
| `user_UUID`        | UUID         | PK           | Identifiant unique de l'utilisateur              |
| `user_pseudo`      | VARCHAR(50)  |              | Pseudonyme de l'utilisateur                      |
| `username`         | VARCHAR(50)  | UNIQUE       | Nom d'utilisateur (doit être unique)             |
| `user_password`    | VARCHAR(255) |              | Mot de passe chiffré de l'utilisateur            |
| `created_at`       | TIMESTAMP    |              | Date de création du compte utilisateur           |

#### Table : `Products`

| Nom de la colonne      | Type         | Clé          | Description                                        |
|------------------------|--------------|--------------|----------------------------------------------------|
| `product_UUID`         | UUID         | PK           | Identifiant unique du produit                      |
| `product_name`         | VARCHAR(100) |              | Nom du produit                                     |
| `product_description`  | TEXT         |              | Description détaillée du produit                   |
| `product_price`        | DECIMAL(10,2)|              | Prix unitaire hors taxe du produit                 |
| `product_quantity`     | INT          |              | Quantité disponible en stock                       |
| `created_at`           | TIMESTAMP    |              | Date d'ajout du produit                            |
| `updated_at`           | TIMESTAMP    |              | Date de la dernière mise à jour des informations   |

#### Table : `Orders`

| Nom de la colonne        | Type         | Clé           | Description                                      |
|--------------------------|--------------|---------------|--------------------------------------------------|
| `order_number`           | UUID         | PK            | Numéro unique de la commande                     |
| `order_total_cost_ht`    | DECIMAL(10,2)|               | Coût total de la commande hors taxe              |
| `order_total_quantity`   | INT          |               | Quantité totale d'articles dans la commande      |
| `created_at`             | TIMESTAMP    |               | Date de création de la commande                  |
| `deliver_at`             | TIMESTAMP    |               | Date de livraison prévue                         |
| `user_UUID`              | UUID         | FK (`Users`)  | Identifiant de l'utilisateur ayant passé la commande |

#### Table de liaison : `belong`

| Nom de la colonne | Type | Clé               | Description                                |
|-------------------|------|-------------------|--------------------------------------------|
| `product_UUID`    | UUID | FK (`Products`)   | Identifiant du produit lié à la commande   |
| `order_number`    | UUID | FK (`Orders`)     | Numéro de la commande contenant le produit |

### Relation entre les tables

- **Users - Orders** : Relation 1:N. Un utilisateur peut passer plusieurs commandes, mais chaque commande appartient à un seul utilisateur.
- **Orders - Products** : Relation N:M. Une commande peut contenir plusieurs produits, et un produit peut apparaître dans plusieurs commandes. La table de liaison `belong` gère cette relation.
