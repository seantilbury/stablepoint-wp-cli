#!/bin/bash

#Set alais of path to WP-CLI 
shopt -s expand_aliases
alias wp="/opt/alt/php72/usr/bin/php /home3/current-cp-user/wp-cli.phar"

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
