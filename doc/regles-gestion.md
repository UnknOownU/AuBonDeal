# Reègles de

### Gestion des utilisateurs :
- **RG01** : L'utilisateur doit être connecté pour effectuer une commande.
- **RG02** : Un utilisateur peut effectuer 0 ou n commandes.
- **RG03** : L'utilisateur doit avoir un identifiant unique, un pseudonyme, un mot de passe, et une date de création de compte.

### Gestion des commandes :
- **RG04** : Une commande appartient à un seul et unique utilisateur.
- **RG05** : Une commande doit contenir un ou plusieurs produits.
- **RG06** : Une commande doit avoir un numéro de commande.
- **RG07** : Une commande est composée d'un coût total HT.
- **RG08** : Une commande doit avoir la quantité totale des produits.
- **RG09** : Une commande doit contenir la date de création de la commande ainsi que la date de livraison du ou des produits.
- **RG10** : Une commande peut être confirmée.

### Gestion des produits :
- **RG11** : Un produit ne peut pas être commandé s’il n’existe pas.
- **RG12** : Un produit doit être composé d’un identifiant unique, d’un nom, et d’un prix unique.


- Le produit possède un nom.
- Le produit possède une description.
- Le produit possède un prix.
- Le produit possède une quantité.
- Le produit possède une date de création.
- Le produit possède une date de mise à jour.
- **RG14** : Un produit doit indiquer sa disponibilité en stock (quantité).
- **RG15** : Un produit peut être commandé par 0 ou plusieurs utilisateurs.
- **RG16** : Un produit ne peut pas avoir un stock de zéro s'il doit être commandé.
- **RG17** : Si son stock est à zéro, le produit est indisponible pour la commande.

### Gestion des visiteurs :
- **RG18** : Un visiteur peut voir une version limitée de la liste des produits.
- **RG19** : Un visiteur peut se connecter ou s'inscrire pour accéder à d'autres fonctionnalités.

N'hésitez pas à demander des modifications si besoin !