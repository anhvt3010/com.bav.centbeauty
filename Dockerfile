# Dockerfile
FROM php:8.2-apache

# Cài đặt các extension cần thiết
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Cài đặt Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Thiết lập thư mục làm việc
WORKDIR /var/www/html

# Sao chép mã nguồn vào container
COPY . .

# Cài đặt các phụ thuộc từ composer
RUN composer install

# Cấu hình Apache
COPY .htaccess /var/www/html/.htaccess