#!/bin/bash
# 2015-06-01/jh
# Create a typical composer.json for a Symfony2 project in the current folder

initF() {
    brief="Create a typical composer.json for a Symfony2 project in the current folder"
    echo $brief
}

readF() {
	read -p "Enter the project name:" 			name
	read -p "Enter the project description:" 	description
	read -p "Enter the user name:" 				username
	read -p "Enter the user email:" 			useremail
	read -p "Enter the user homepage:" 			userhomepage
}

createF() {
	cat >./composer.json <<EOL
	{
		"name" : "${name}",
		"license" : "CC-BY-SA-4.0",
		"type" : "project",
		"description" : "${description}",
		"autoload" : {
			"psr-0" : {
				"" : "src/"
			}
		},
		"require" : {
			"php" : ">=5.3.3",
			"symfony/symfony" : "2.3.*",
			"doctrine/orm" : "~2.2,>=2.2.3,<2.5",
			"doctrine/dbal" : "<2.5",
			"doctrine/doctrine-bundle" : "~1.2",
			"twig/extensions" : "1.0.*",
			"symfony/assetic-bundle" : "~2.3",
			"symfony/swiftmailer-bundle" : "~2.3",
			"symfony/monolog-bundle" : "~2.4",
			"sensio/distribution-bundle" : "~2.3",
			"sensio/framework-extra-bundle" : "~3.0,>=3.0.2",
			"sensio/generator-bundle" : "~2.3",
			"incenteev/composer-parameter-handler" : "~2.0",
			"friendsofsymfony/user-bundle" : "1.3.5"
		},
		"scripts" : {
			"post-install-cmd" : [
				"Incenteev\\ParameterHandler\\ScriptHandler::buildParameters",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::buildBootstrap",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::clearCache",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installAssets",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installRequirementsFile",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::prepareDeploymentTarget"
			],
			"post-update-cmd" : [
				"Incenteev\\ParameterHandler\\ScriptHandler::buildParameters",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::buildBootstrap",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::clearCache",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installAssets",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installRequirementsFile",
				"Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::prepareDeploymentTarget"
			]
		},
		"config" : {
			"bin-dir" : "bin"
		},
		"minimum-stability" : "stable",
		"extra" : {
			"symfony-app-dir" : "app",
			"symfony-web-dir" : "web",
			"incenteev-parameters" : {
				"file" : "app/config/parameters.yml"
			},
			"branch-alias" : {
				"dev-master" : "2.3-dev"
			}
		},
		"authors" : [{
				"name" : "${username}",
				"email" : "${useremail}",
				"homepage" : "${userhomepage}",
				"role" : "developer"
			}
		],
		"homepage" : "https://www.74h.eu"
	}
	EOL
}

errorF() {
    echo "Error with the #: $1"
    exit 1
}

main() {
	initF || errorF 1
	readF || errorF 2
	createF && echo "Done: Check ./composer.json" || errorF 3
}

main
exit 0

#EOF
