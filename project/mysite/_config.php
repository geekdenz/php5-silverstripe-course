<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'test',
	'password' => 'test',
	'database' => 'mydb',
	'path' => ''
);

// Set the site locale
i18n::set_locale('de_DE');
