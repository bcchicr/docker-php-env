# Среда разработки PHP на основе Docker

- [Требования](#Требования)
- [Содержание контейнеров](#Содержание-контейнеров)
- [Возможности и особенности](#Возможности-и-особенности)
- [Установка](#Установка)

## Требования

- Docker + Docker Compose

## Содержание контейнеров

Контейнеры содержат:

- Nginx
- Postgres
- PHP
- Composer
- Redis

Версии указанных сервисов можно указать в файле `.env`.

## Возможности и особенности

- Установлены некоторые востребованные расширения для PHP
- Возможно указать для развертывания development или final версию среды
- В final-версии к PHP подключено расширение XDebug
- Возможно указать режим работы XDebug
- Переменные окружения из файла `.env` доступны в контейнере с PHP. Их можно использовать для подключения к базе данных средствами PHP.
- При наличии в папке проекта файла `composer.json` зависимости будут автоматически установлены при сборке среды
- Composer запускается из собственного контейнера
- Веб-сервер Nginx предварительно настроен и собирает логи в папку `nginx/logs`
- Все контейнеры основаны на официальных образах из DockerHub
- Каждый контейнер содержит себе один сервис и выполняет собственную задачу

## Установка

1. Выполните клонирование этого репозитория в корневую папку проекта:

```shell script
git clone https://github.com/bcchicr/docker-php-env.git
```

Перейдите в директорию, в которую был клонирован репозиторий. Дальнейшие команды следует выполнять в этой директории.

2. Скопируйте `.env.example` в `.env`:

```shell script
cp .env.example .env
```

Измените настройки среды в соответствии с вашими требованиями.

3. Запустите контейнеры:

```shell script
docker compose up -d
```

4. Откройте приложение в браузере.

Приложение будет доступно по адресу `${NETWORK_INTERFACE}:${NGINX_PORT}`.  
По умолчанию это адрес `127.0.0.1:80`.
