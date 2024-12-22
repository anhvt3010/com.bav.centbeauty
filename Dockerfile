# Dockerfile
FROM php:8.2-apache

# Cài đặt các extension cần thiết và các phụ thuộc hệ thống
RUN apt-get update && apt-get install -y \
   git \
   unzip \
   && docker-php-ext-install mysqli pdo pdo_mysql \
   && apt-get clean && rm -rf /var/lib/apt/lists/*

# Cài đặt Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# Thiết lập thư mục làm việc
WORKDIR /var/www/html

# Sao chép mã nguồn vào container
COPY . .

# Cài đặt các phụ thuộc từ composer
RUN composer install --no-scripts --no-progress --prefer-dist

# Cấu hình Apache
COPY .htaccess /var/www/html/.htaccess