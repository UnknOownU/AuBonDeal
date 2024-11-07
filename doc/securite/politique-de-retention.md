### Voici la politique de rétention mise en place pour le site e-commerce AuBonDeal

# Objectifs de la Politique

- Assurer la Continuité des Activités : Garantir que les données critiques sont disponibles en cas d'incident.

- Protéger les Données Sensibles : Prévenir les accès non autorisés et les fuites d'informations.

- Conformité Réglementaire : Respecter les lois relatives à la protection des données personnelles, notamment le RGPD.

- Optimiser la Gestion des Données : Éviter l'accumulation de données obsolètes ou non pertinentes.

# Portée

- Cette politique s'applique à toutes les données collectées, traitées et stockées dans le cadre du projet AuBonDeal, y compris :

- Données des Utilisateurs : Informations personnelles des vendeurs et acheteurs.

- Données des Transactions : Détails des ventes, achats et historiques.

- Données des Produits : Descriptions, images et caractéristiques des articles.

- Données Techniques : Journaux système, configurations et métadonnées.

# Fréquence 

- Sauvegarde Complète Quotidienne : Une sauvegarde complète de la base de données sera effectuée chaque jour à 02h00 du matin.

- Sauvegardes Incrémentielles Horaires : Des sauvegardes incrémentielles seront réalisées toutes les heures pour capturer les modifications récentes.

- Sauvegarde Hebdomadaire : Chaque dimanche, une sauvegarde complète sera conservée séparément comme point de restauration principal.

# Procédures de Sauvegarde

- Automatisation : Utilisation de scripts planifiés (sauvegarde_automatique.sh).
- Vérification d'Intégrité : Contrôles réguliers avec verification_integrite.sh.
- Journalisation : Enregistrement des opérations de sauvegarde pour audit.

# Procédures de Restauration

 ### Processus de Restauration :
- Identification du point de restauration nécessaire.

- Utilisation de restauration_base_de_donnees.sh.

- Validation post-restauration.

- Tests Périodiques : Simulations trimestrielles pour assurer l'efficacité.

# Sécurité des Données

- Chiffrement : Utilisation de l'AES-256 pour toutes les sauvegardes.

- Gestion des Clés : Clés stockées en modules matériels sécurisés (HSM).

- Contrôle d'Accès : Politiques strictes, authentification multi-facteurs.

# Responsabilités

### Administrateur de Base de Données (DBA) :

- Mise en œuvre des procédures de sauvegarde et restauration.

- Surveillance et maintenance des systèmes de sauvegarde.

### Équipe de Sécurité :

- Gestion des accès et permissions.

- Audits de sécurité réguliers.

### Direction Technique :

- Approbation et révision de la politique.

- Allocation des ressources nécessaires.

### Conformité et Audits

- Conformité au RGPD : Traitement des données personnelles conformément aux droits des utilisateurs.

- Audits Internes : Vérifications semestrielles de conformité.

- Audits Externes : Audits annuels par une tierce partie indépendante.

# Les endroits de stockage avec la règle 3-2-1

 La règle 3-2-1 est une stratégie éprouvée en matière de sauvegarde des données qui vise à minimiser les risques de perte de données. Elle recommande les pratiques suivantes :

-  3 copies des données : Conservez au moins trois copies de vos données. Cela inclut l'originale et deux copies de sauvegarde.

- 2 types de supports différents : Stockez les copies de sauvegarde sur au moins deux types de supports distincts. Par exemple, vous pourriez avoir une copie sur un disque dur interne et une autre sur un support externe comme un disque dur externe, une clé USB ou un stockage cloud.

-  1 copie hors site : Gardez au moins une copie de sauvegarde dans un emplacement géographiquement différent de celui des données originales. Cela protège vos données en cas de sinistre localisé, comme un incendie, une inondation ou un vol.

## Pourquoi appliquer la règle 3-2-1 ?

Protection contre les défaillances matérielles : Si un support de stockage tombe en panne, les autres copies assurent la récupération des données.
Sécurité en cas de sinistre : Une copie hors site garantit que vos données sont préservées même si votre emplacement principal est compromis.
Prévention contre les erreurs humaines et les logiciels malveillants : Avoir plusieurs copies réduit le risque que des erreurs ou des attaques affectent toutes les copies simultanément.
Exemple d'application de la règle 3-2-1 :

Original : Les données sur votre ordinateur de travail.
Première sauvegarde locale : Une copie sur un disque dur externe connecté à votre ordinateur.
Deuxième sauvegarde hors site : Une sauvegarde automatique vers un service de stockage en cloud sécurisé.

# Emplacements de Stockage

### Stockage Principal (Local)

- Description : Serveurs internes sécurisés avec redondance RAID.

- Sécurité : Accès restreint, pare-feu, chiffrement des données au repos.

### Stockage Secondaire (Support Externe)

- Description : Disques durs externes chiffrés, stockés dans un coffre-fort sécurisé.

- Sécurité : Chiffrement, accès physique contrôlé.

### Stockage Hors Site (Cloud Sécurisé)

- Description : Services cloud conformes aux normes de sécurité (AWS S3, Azure).

- Sécurité : Chiffrement de bout en bout, conformité RGPD, redondance géographique.

## Durées de Rétention des Données

### Données des Utilisateurs
- Durée de Conservation : Les données personnelles sont conservées pendant la durée de la relation contractuelle, puis archivées pendant 3 ans après la dernière activité.

- Destruction : Suppression sécurisée après la période de conservation légale.

### Données des Transactions

- Durée de Conservation : Conservées pendant 10 ans conformément aux obligations comptables et fiscales.

- Destruction : Suppression sécurisée après expiration des obligations légales.

### Données des Produits

- Durée de Conservation : Conservées tant que le produit est actif sur la plateforme, puis archivées pendant 2 ans.

- Destruction : Suppression après la période d'archivage.

### Données Techniques

- Journaux Système : Conservés pendant 6 mois.

- Configurations : Conservées indéfiniment ou jusqu'à modification.

# Pour lutter contre quelles menace cette politique de rétention

- Pertes de Données Accidentelles : Suppressions involontaires ou modifications erronées des données.

- Corruption de Données : Due à des pannes matérielles, des bugs logiciels ou des attaques malveillantes.

- Attaques Ransomware : Chiffrement malveillant des données par des tiers non autorisés.

- Catastrophes Naturelles : Incendies, inondations, ou autres événements affectant les installations physiques.