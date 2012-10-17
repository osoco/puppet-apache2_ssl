puppet-apache2_ssl
==================

Puppet module to manage apache2 ssl conf (basic dir, different certs..). Depends on https://github.com/osoco/puppet-apache2. 
Example of usage:

    class my_apache2_ssl_conf {

        class { 'apache2-ssl': apache2_ssl_dir => '/var/ssl' }

        apache2_ssl::certificate { "my-new-cert":
            cert_name => "my-new-cert",
            cert_file_source => "puppet:///modules/my_apache2_ssl_conf/my-new-cert.crt",
            cert_key_file_source => "puppet:///modules/my_apache2_ssl_conf/my-new-cert.key"
       }
    }
