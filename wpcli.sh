#!/bin/bash

# set path to wpcli ***check PHP version*** #
shopt -s expand_aliases
alias wp="/opt/alt/php72/usr/bin/php /home3/bruceatfieldco/wp-cli.phar"

# echo start time/date for logs #
now="$(date)"
printf "Updates Started at %s\n" "$now"

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

# echo finish time/date for logs #
now="$(date)"
printf "Updates Completed at %s\n" "$now"
