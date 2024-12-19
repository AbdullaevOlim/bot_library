# Используем базовый образ Python
FROM python:3.10

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем все файлы проекта в контейнер
COPY . /app

# Устанавливаем зависимости из requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Загружаем переменные окружения из .env
COPY .env /app/.env

# Открываем порт для общения (если необходимо)
EXPOSE 8000

# Запускаем приложение
CMD ["python", "main.py"]

