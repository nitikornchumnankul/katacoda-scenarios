## Install JAVA JDK or JRE
sudo apt-get update

sudo apt-get -y install openjdk-8-jdk


## Show directory
dpkg -L openjdk-8-jdk

## Set Java Environment
## 1. Set the JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

## 2. Append Java compiler location to System Path.
export PATH=$PATH:$JAVA_HOME/bin/
## 3. Download Maven Archive


wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

## 4. Extract the Maven Archive
To uncompress
tar xvzf apache-maven-3.6.3-bin.tar.gz

## 5. Set Maven Environment Variables
Add M2_HOME, M2, MAVEN_OPTS to environment variables.

export M2_HOME=./apache-maven-3.6.3

export M2=$M2_HOME/bin

## 6. Add Maven bin Directory Location to System Path

export PATH=$M2:$PATH

## 7. Verify Maven Installation
mvn --version
