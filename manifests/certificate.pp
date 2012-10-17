define apache2_ssl::certificate($cert_name, $cert_file_source, $cert_key_file_source) {

    include apache2_ssl

    $cert_dir = $apache2_ssl::apache2_ssl_dir

    file { "$cert_dir/$cert_name.crt":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
	source => "$cert_file_source",
        require => File["$cert_dir"]
    }

    file { "$cert_dir/$cert_name.key":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
	source => "$cert_key_file_source",
        require => File["$cert_dir"]
    }
}
