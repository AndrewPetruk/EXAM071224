# Dockerfile
# Используем официальный образ Node.js
FROM node:23.3

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и устанавливаем зависимости
COPY app/package*.json ./
RUN npm install -g

# Копируем весь код приложения
COPY app/ .

# Открываем порт, на котором будет работать приложение
EXPOSE 8080

# Запускаем приложение
CMD ["node", "index.js"]
