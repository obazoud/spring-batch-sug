#!/bin/bash
set -e 
set -x
mysql -h localhost -u root --password=root beer < src/test/resources/fr/sug/springbatch/example/schema-drop-recipe.sql
mysql -h localhost -u root --password=root beer < src/test/resources/fr/sug/springbatch/example/schema-recipe.sql
mysql -h localhost -u root --password=root beer < src/test/resources/fr/sug/springbatch/example/schema-drop-mysql.sql
mysql -h localhost -u root --password=root beer < src/test/resources/fr/sug/springbatch/example/schema-mysql.sql

