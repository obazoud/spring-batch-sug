#!/bin/bash
set -x
set -e

java -classpath $(echo ./lib/*.jar . | sed 's/ /:/g') org.springframework.batch.core.launch.support.CommandLineJobRunner \
fr/sug/springbatch/example/batch-context.xml jobExemple \
recipes=../../../src/test/resources/recipes.xml \
