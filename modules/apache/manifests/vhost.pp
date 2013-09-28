define apache::vhost ($docroot, $domain, $vhost_name) {
    include apache
    file { "/etc/apache2/sites-available/${vhost_name}.conf":
        content => template("apache/vhost.erb"),
        notify => Exec["enable-${vhost_domain}-vhost"],
    }

    exec { "enable-${vhost_domain}-vhost":
        command => "/usr/sbin/a2ensite ${vhost_name}.conf",
        require => [ File["/etc/apache2/sites-available/${vhost_name}.conf"], Package["apache2"] ],
        refreshonly => true,
        notify => Service["apache2"],
    }
}

