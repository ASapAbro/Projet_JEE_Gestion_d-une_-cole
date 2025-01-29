# Projet_JEE_Gestion_d-une_-cole

## Technologies Utilisées
- **Java EE** (JSP, Servlets)
- **Tomcat** (Serveur d'application)
- **MySQL** (Base de données)
- **JPA/Hibernate** (ORM pour la gestion des données)
- **Bootstrap** (Interface utilisateur)

## Structure du Projet
```
Projet_JEE/
│── src/                  # Code source
│   ├── controleur/       # Servlets et contrôleurs
│   ├── modele/           # Entités JPA et DAO
│   ├── vue/              # Pages JSP
│── WebContent/           # Contenu web (JSP, CSS, JS)
│── WEB-INF/              # Configuration (web.xml)
│── lib/                  # Bibliothèques (JARs)
│── .settings/            # Fichiers Eclipse
│── pom.xml               # Configuration Maven (si applicable)
│── README.md             # Documentation du projet
│── .gitignore            # Fichiers à ignorer dans Git
```

## Installation
1. **Cloner le dépôt**
   ```sh
   git clone https://github.com/ton-utilisateur/projet-jee.git
   cd projet-jee
   ```
2. **Importer dans Eclipse**
   - `File` → `Import` → `Existing Projects into Workspace`
   - Sélectionner le dossier du projet
3. **Configurer la base de données**
   - Créer une base MySQL :
     ```sql
     CREATE DATABASE projet_jee;
     ```
   - Modifier `persistence.xml` pour adapter les paramètres MySQL.
4. **Lancer l'application**
   - Déployer sur Tomcat via Eclipse.
   - Accéder à `http://localhost:8080/projet-jee/`

## Fonctionnalités Principales
- Authentification et gestion des utilisateurs
- Création et gestion des offres d'alternance
- Gestion des candidatures et suivi des étudiants
- Tableau de bord avec statistiques

## Contributions
Les contributions sont les bienvenues ! Merci de suivre les étapes suivantes :
1. **Fork** le projet
2. **Créer une branche** : `git checkout -b feature-ma-fonctionnalite`
3. **Commit tes modifications** : `git commit -m "Ajout d'une fonctionnalité"`
4. **Pousse vers GitHub** : `git push origin feature-ma-fonctionnalite`
5. **Créer une Pull Request**

## Licence
Ce projet est sous licence MIT. Vous êtes libre de le modifier et de le redistribuer sous cette licence.
