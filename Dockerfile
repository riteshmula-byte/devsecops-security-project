
# Intentionally insecure base image for the isolated security lab
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Runs as root by default: a configuration weakness for the scanner to review
EXPOSE 3000

CMD ["npm", "start"]
