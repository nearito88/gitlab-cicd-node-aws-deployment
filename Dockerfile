# 1. Image de Base : Nous utilisons une image Node.js officielle légère.
FROM node:20-alpine

# 2. Répertoire de Travail : Définit le répertoire de travail dans le conteneur.
WORKDIR /usr/src/app

# 3. Copie des Dépendances : Copie les fichiers de configuration du package.
# Nous faisons cela séparément pour profiter de la mise en cache de Docker (si les dépendances ne changent pas).
COPY package*.json ./

# 4. Installation des Dépendances : Installation des paquets Node.js.
RUN npm install

# 5. Copie du Code Source : Copie le reste du code de l'application.
COPY . .

# 6. Exposition du Port : Informe Docker que le conteneur écoutera sur le port 3000.
EXPOSE 3000

# 7. Commande de Démarrage : Commande par défaut pour démarrer l'application.
CMD [ "npm", "start" ]