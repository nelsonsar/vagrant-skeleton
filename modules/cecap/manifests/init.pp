class cecap {
    class { 'mysql': }

    class { 'mysql::server':
        config_hash => { 'root_password' => 'root' }
    }

    mysql::db { 'cecap':
        user => 'cecap',
        password => 'cecap'
    }

    include mysql::php

    package { "php5":
        ensure => present,
    }

    apache::vhost {'puppet':
        docroot => '/var/www/cecap',
        domain => 'cecap.dev',
        vhost_name => 'cecap'
    }
}
