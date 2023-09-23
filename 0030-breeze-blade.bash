#! /bin/bash -eux

# @see https://laravel.com/docs/10.x/starter-kits
composer require laravel/breeze --dev

php artisan breeze:install

php artisan migrate
npm install
