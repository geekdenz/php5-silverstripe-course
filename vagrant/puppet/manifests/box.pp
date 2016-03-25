notice('=== PHP 5 - SilverStripe ===')

class { 'timezone':
  region   => 'Europe',
  locality => 'Berlin',
}

package{ 'vim':
    ensure => present,
}

package{ 'mysql-server':
    ensure => present,
}

package{ 'mysql-client':
    ensure => present,
}

package{ ['apache2', 'php5']:
    ensure => present,
}

# == variables == #
$db_name                   = 'test'
$db_user                   = 'test'
$db_pass                   = 'test'
$project_name              = 'silverstripe'
