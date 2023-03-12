FROM ubuntu:20.04

# Установка Apache и необходимых пакетов
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Копирование конфигурационных файлов Apache в образ
COPY apache2.conf /etc/apache2/apache2.conf
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Экспонируем порт 80
EXPOSE 80

# Команда запуска Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
