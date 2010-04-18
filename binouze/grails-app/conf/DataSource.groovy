dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = "root"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "none" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/beer"
		}
	}
	test {
		dataSource {
			dbCreate = "none" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/beer"
		}
	}
	production {
		dataSource {
			dbCreate = "none" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/beer"
		}
	}
}
