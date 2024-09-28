#!/bin/sh

# git操作を行えるようにする
git config --global --add safe.directory /var/www/html

# PHPStan & Larastan導入
composer require phpstan/phpstan --dev
composer require phpstan/phpstan-strict-rules --dev
composer require nunomaduro/larastan:^2.0 --dev

# Commit時にpre-commitを走らせるよう設定
chmod +x .githooks/pre-commit
git config --local core.hooksPath .githooks
