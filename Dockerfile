# Verwende ein Node.js-Image als Basis
FROM node

# Setze das Arbeitsverzeichnis innerhalb des Containers
WORKDIR /usr/src/app

# Kopiere die package.json-Datei und package-lock.json in das Arbeitsverzeichnis
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den Rest der Anwendung in das Arbeitsverzeichnis
COPY . .

# Baue die React-Anwendung
RUN npm run build

# Öffne den Port 80 für den Container
EXPOSE 80

# Starte die React-Anwendung
CMD ["npm", "start"]
