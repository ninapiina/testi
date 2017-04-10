class testaus {
	package {‘apache2’:
	ensure => installed ,
	allowcdrom => true ,

        }

         file { ‘/var/www/html/index.html’:
		require => Package[‘apache2’] ,
		content => ‘Kukkuu’ ,

        }

}
