define apache2_ssl::certificate($cert_name, $cert_file_source, $cert_key_file_source) {

    include apache2_ssl

    file { "$apache2_ssl::apache2_ssl_dir/$cert_name.pem":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
	source => "$cert_file_source",
        require => File["$apache2_ssl_dir"]
    }

    file { "$apache2_ssl::apache2_ssl_dir/$cert_name.key":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0644,
	source => "$cert_key_file_source",
        require => File["$apache2_ssl_dir"]
    }
}
