class apache2_ssl($apache2_ssl_dir = "/etc/apache2/ssl") {

    package { "openssl":
        ensure => "installed"
    }

    file { "$apache2_ssl_dir":
        ensure => directory,
        owner => 'root',
        group => 'root',
        mode => 0755,
    }

    apache2::module { "ssl":
        modname => "ssl",
    }
}
