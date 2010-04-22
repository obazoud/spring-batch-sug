#!/bin/bash
set -x
set -e

# Usage
if [ $# -ne 1 ]; then
        echo "Usage: $0 [normal|medium|big]";
        exit 1;
fi

# JAVA_OPTS
export JMX_PORT=1041
if [ -n "$JMX_PORT" ]; then
     JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.port=$JMX_PORT \
     -Dcom.sun.management.jmxremote.ssl=false \
     -Dcom.sun.management.jmxremote.authenticate=false \
     -Dcom.sun.management.jmxremote"
fi
JAVA_OPTS="$JAVA_OPTS -Xmx256m -XX:MaxPermSize=64m -XX:-UseGCOverheadLimit"
JAVA_OPTS="$JAVA_OPTS -Djava.awt.headless=true"

TYPE=$1
case $TYPE in
    normal)
        echo "normal"
        java $JAVA_OPTS -classpath $(echo ./lib/*.jar . | sed 's/ /:/g') \
            org.springframework.batch.core.launch.support.CommandLineJobRunner \
            fr/sug/springbatch/example/batch-context.xml jobExemple \
            recipes=file:///data/projects/fr-sug-spring-batch/dirtybatch/data/recipes.xml \
            time=$(date +%Y%m%d-%k%M%S)
        exit
    ;;
    medium)
        echo "medium"
        java $JAVA_OPTS -classpath $(echo ./lib/*.jar . | sed 's/ /:/g') \
            org.springframework.batch.core.launch.support.CommandLineJobRunner \
            fr/sug/springbatch/example/batch-context.xml jobExemple \
            recipes=file:///data/projects/fr-sug-spring-batch/dirtybatch/data/recipes-medium.xml \
            time=$(date +%Y%m%d-%k%M%S)
        exit
    ;;
    big)
        echo "big"
        java $JAVA_OPTS -classpath $(echo ./lib/*.jar . | sed 's/ /:/g') \
            org.springframework.batch.core.launch.support.CommandLineJobRunner \
            fr/sug/springbatch/example/batch-context.xml jobExemple \
            recipes=file:///data/projects/fr-sug-spring-batch/dirtybatch/data/recipes-big.xml \
            time=$(date +%Y%m%d-%k%M%S)
        exit
    ;;
esac

echo ">> #FAIL"
