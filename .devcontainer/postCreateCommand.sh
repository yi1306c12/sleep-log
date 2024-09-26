#!/bin/sh

# git操作を行えるようにする
git config --global --add safe.directory /var/www/html

# PHPStan & Larastan導入
composer require phpstan/phpstan --dev
composer require phpstan/phpstan-strict-rules --dev
composer require nunomaduro/larastan:^2.0 --dev
