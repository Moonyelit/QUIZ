# 🎮 QUIZ 404 🎯

## 📝 Description du Projet

Quiz 404 est une application web ludique développée avec Symfony, permettant aux utilisateurs de tester leurs connaissances sur différents sujets. Ce projet a été développé pour approfondir la maîtrise de la Programmation Orientée Objet avancée et du framework Symfony.

## ✨ Fonctionnalités Principales

- 🧩 Système de quiz interactif
- ⏱️ Timer de 30 secondes par question
- 🏆 Système de points dynamique :
  - Réponse correcte : points de base + bonus de vitesse
  - Réponse incorrecte : aucun point
  - Pas de réponse dans le temps imparti : passage à la question suivante sans points
- 🎨 Design soigné avec des éléments visuels répartis sur la page
- 📊 Tableau des meilleurs scores
- 👤 Système d'authentification des joueurs

## 🛠️ Technologies Utilisées

- 🖥️ Symfony 7.1
- 🔄 AJAX pour les interactions dynamiques
- 💄 CSS personnalisé
- 🗄️ MySQL pour la base de données
- 📱 Design responsive

## ⚙️ Installation

1. Clonez le dépôt :
   ```bash
   git clone https://github.com/Moonyelit/QUIZ.git
   ```

2. Installez les dépendances :
   ```bash
   composer install
   ```

3. Configurez la base de données :
   - Créez une base de données MySQL
   - Modifiez le fichier `.env.local` avec vos identifiants

4. Créez la structure de la base de données :
   ```bash
   php bin/console doctrine:schema:update --force
   ```

5. Chargez les données initiales (optionnel) :
   ```bash
   php bin/console doctrine:fixtures:load
   ```

6. Lancez le serveur :
   ```bash
   symfony server:start
   ```

## 🌐 Démo en Ligne

Vous pouvez tester l'application en ligne sans installation à l'adresse suivante : [Lien du jeu](https://www.elodie-quiz404.pro4.garage404.com/)

## 🎓 Ce que j'ai appris

- 🧠 POO avancée avec Symfony
- ⚡ Intégration d'AJAX pour des interactions sans rechargement de page
- ⏲️ Implémentation d'un timer et d'un système de points dynamique
- 🎨 Design plus complexe avec positionnement précis d'éléments visuels
- 🔒 Gestion de l'authentification et des sessions utilisateur