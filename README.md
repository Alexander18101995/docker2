# Команда для сборки
docker build --tag my-server:1.0 .
# Команда для запуска 
docker run --publish 8000:8000 --name my-name my-server:1.0
