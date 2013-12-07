# This is puppet default pp file
# Created by Ramkumar Kuppuchamy => 2013/12/05 

node ip-10-5-1-31 {
 
	file { "/opt/packages/db2":
		ensure => directory,
		mode  => 0600,
	}
	package { "apache2":
		ensure => present,
	}
}
node default { 

	user { 'ramkumar':
		ensure => present,
		uid => 510,
		groups => ['root'],
		home => '/home/ramkumar',
		managehome => true
	}

}
