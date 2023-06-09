
# Use the official Node.js image as the base image
# FROM node:18

# Set the working directory in the container
# WORKDIR /app

# Copy the application files into the working directory
# COPY . /app

# Install the application dependencies
# RUN npm install

# Define the entry point for the container
# CMD ["npm", "run build"]


FROM node:14-alpine

# Встановіть каталог робочої директорії в /usr/src/app
WORKDIR /usr/src/app

# Скопіюйте файли package.json та package-lock.json у контейнер
COPY package*.json ./

# Встановіть залежності проекту
RUN npm install

# Скопіюйте всі файли проекту (крім зазначених в .dockerignore)
COPY . .

# Виконайте будь-які необхідні команди збірки або налаштування проекту Strapi

# Встановіть порт, на якому буде працювати Strapi (за замовчуванням 1337)
EXPOSE 1337

# Команда, яка буде виконуватися при запуску контейнера
CMD ["npm", "start"]