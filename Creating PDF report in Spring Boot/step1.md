## Install JAVA JDK or JRE
`sudo apt-get update`{{execute}}

`sudo apt-get install openjdk-8-jdk`{{execute}}

`yes`{{execute}}


## Show directory
`dpkg -L openjdk-8-jdk`{{execute}}

## Set Java Environment
## 1. Set the JAVA_HOME
`export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64`{{execute}}

## 2. Append Java compiler location to System Path.
`export PATH=$PATH:$JAVA_HOME/bin/`{{execute}}

## 3. Download Maven Archive


`wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz`{{execute}}

## 4. Extract the Maven Archive
To uncompress
`tar xvzf apache-maven-3.6.3-bin.tar.gz`{{execute}}

## 5. Set Maven Environment Variables
Add M2_HOME, M2, MAVEN_OPTS to environment variables.

`export M2_HOME=./apache-maven-3.6.3`{{execute}}

`export M2=$M2_HOME/bin`{{execute}}

`export MAVEN_OPTS=-Xms256m -Xmx512m`{{execute}}

## 6. Add Maven bin Directory Location to System Path

`export PATH=$M2:$PATH`{{execute}}

## 7. Verify Maven Installation
` mvn --version`{{execute}}

## Reference
1. [Maven - Environment Setup](https://www.tutorialspoint.com/maven/maven_environment_setup.htm)
2. [Download Maven](https://maven.apache.org/download.cgi)
3. [How To Extract .tar.gz Files using Linux Command Line](https://www.interserver.net/tips/kb/extract-tar-gz-files-using-linux-command-line/)
4. [Understanding Memory Management](https://docs.oracle.com/cd/E13150_01/jrockit_jvm/jrockit/geninfo/diagnos/garbage_collect.html#wp1085825)

