#!/usr/bin/env bash

set -euo pipefail

dependency_file=tomcat-embed-core-10.1.19.jar

if [[ ! -f "${dependency_file}" ]] ; then
  wget "https://repo1.maven.org/maven2/org/apache/tomcat/embed/tomcat-embed-core/10.1.19/${dependency_file}"
fi

javac -cp "${dependency_file}" src/main/java/SlowStop.java

mv src/main/java/SlowStop.class .
java -cp ".:${dependency_file}" SlowStop

