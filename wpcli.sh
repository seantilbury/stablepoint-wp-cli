#!/bin/bash

# set path to wpcli ***check PHP version*** #
wp='opt/alt/php72/usr/bin /home3/thedomian/wp-cli.phar'

# update all plugins #
wp plugin update --all

# update all themes #
wp theme update --all

# update WordPress core #
wp core update

# verify core files against checksums #
wp core verify-checksums

# update wpcli to latest version #
wp cli update --yes
