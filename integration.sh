#!/bin/bash
echo "undeploying"
rm -rf /opt/apache-tomcat-8.0.36/webapps/dsat_template*
echo "start mvn clean"
mvn clean
echo "finish mvn clean"
sleep 1;
echo "deploying war to tomcat"
echo "running mvn install"
mvn install

## check if mvn install is success

cp target/dsat_template.war /opt/apache-tomcat-8.0.36/webapps/

echo "runnign phantom"
./phantomjs.sh