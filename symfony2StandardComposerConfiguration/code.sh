#!/bin/bash
# 2015-05-29
# Symfony 2.3 LTS Standard Installation with Modifications

# Requirements
# 1. Start this script in the parent folder of $rootPathName.
# 2. Choose the value of $rootPathName with PSR in mind.
# 3. The composer.json.template should be modified to fit to the current usage.
# 4. Composer is globally installed.
# 5. The MySQL Database of the new Web Application and the right MySQL User sre created.

# Variables
rootPathName=''

# Execution

installF() {
    composer create-project symfony/framework-standard-edition ./$rootPathName/ "2.3.*"
    cd $rootPathName;
    mv composer.json composer.json.bak
    cp ../composer.json .
    composer update
}

main || exit 1
exit 0

#EOF
