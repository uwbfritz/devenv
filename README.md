# LAMP Development Stack
---
A configurable local development solution with a management app, multi-version PHP, and MySQL.

![Build Status](https://img.shields.io/github/actions/workflow/status/uwbfritz/devenv/main.yml?style=plastic)

[![Shellcheck](https://github.com/uwbfritz/devenv/actions/workflows/sc.yml/badge.svg?event=check_suite)](https://github.com/uwbfritz/devenv/actions/workflows/sc.yml)
### Contents
```
├── compose                                          # Compose file directory
│   ├── compose-drupal-7.yml                         # Compose file for Drupal development in PHP 7.x
│   ├── compose-drupal-8.yml                         # Compose file for Drupal development in PHP 8.x
│   ├── compose-native-7.yml                         # Compose file for PHP development in PHP 7.x
│   └── compose-native-8.yml                         # Compose file for PHP development in PHP 8.x
├── config
│   ├── apache
│   │   ├── 000-default.conf                         # Apache 2.4 default site configuration
│   │   └── apache2.conf                             # Apache 2.4 config
│   ├── bin
│   │   └── dev                                      # Log watching script
│   ├── docker-php-ext-xdebug.ini                    # XDebug configuration that works with VSCode
│   ├── php
│   │   ├── docker-php-ext-xdebug.ini                # XDebug module configuration
│   │   └── php.ini                                  # PHP config
│   └── php.ini
├── devenv                                           # Main utility script. 
└── dockerfiles
    ├── Dockerfile-74                                # PHP 7.4 with composer @ v1
    ├── Dockerfile-81                                # PHP 8.1 with composer @ v2, drush
    └── Dockerfile-82                                # PHP 8.2 with composer @ v2, drush
```

### Usage
```
# Set up environment
./devenv setup

# Start environment
./devenv start

--------------------------------
Usage: devenv [function] [param]

Functions:

   setup  - Setup the development environment
   load  - Load the database from a sql file
   dump  - Dump the database to a sql file
   clone  - Clone the repo into the html directory
   start  - Start the development environment
   stop  - Stop the development environment
   preload  - Run the preload script (load public/private files)
   attach  - Attach to the frontend container
   attachto  - Attach to an active container
   destroy  - Destroy the development environment
   destroyall  - Destroy all containers, images, volumes, networks, and your dev environment
   rsync  - Rsync the sites/default/files from remote to local

```
