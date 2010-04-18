#!/bin/bash
set -x
set -e

java -classpath $(echo ./lib/*.jar . | sed 's/ /:/g') org.springframework.batch.core.launch.support.CommandLineJobRunner \
fr/sug/springbatch/example/batch-context.xml jobExemple \
recipes=file:///home/bazoud/java/workspace/svn/fullsix/sug/fr-sug-spring-batch/spring-batch/src/test/resources/recipes.xml \
