#! /bin/bash -eux

project=${1-'laravel-sample'}
composer create-project laravel/laravel "$project"
