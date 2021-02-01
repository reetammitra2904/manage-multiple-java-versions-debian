
#!/bin/bash
#JDK LTS Download URLs (64 bit)
# 8 ->  https://builds.openlogic.com/downloadJDK/openlogic-openjdk/8u262-b10/openlogic-openjdk-8u262-b10-linux-x32.tar.gz
# 11 -> https://download.java.net/java/GA/jdk15.0.1/51f4f36ad4ef43e39d0dfdbaf6549e32/9/GPL/openjdk-15.0.1_linux-x64_bin.tar.gzhttps://download.java.net/java/GA/jdk15/779bf45e88a44cbd9ea6621d33e33db1/36/GPL/openjdk-15_linux-x64_bin.tar.gz
# 17 -> https://download.java.net/java/early_access/jdk17/7/GPL/openjdk-17-ea+7_linux-x64_bin.tar.gz

JAVA_DOWNLOAD_URL=
JAVA_VERSION=
apt install wget
filename=$(basename "$JAVA_DOWNLOAD_URL")
wget "$JAVA_DOWNLOAD_URL"
chmod +x $filename
mkdir /usr/lib/jvm/open-jdk-$JAVA_VERSION
sudo tar -xzf "./${filename}" -C /usr/lib/jvm/open-jdk-$JAVA_VERSION --strip-components=1
update-alternatives --list java
update-alternatives --install /usr/bin/java java "/usr/lib/jvm/open-jdk-${JAVA_VERSION}/bin/java" 1
update-alternatives --install /usr/bin/javac javac "/usr/lib/jvm/open-jdk-${JAVA_VERSION}/bin/javac" 1
update-alternatives --install /usr/bin/jar jar "/usr/lib/jvm/open-jdk-${JAVA_VERSION}/bin/jar" 1
update-alternatives --install /usr/bin/jshell jshell "/usr/lib/jvm/open-jdk-${JAVA_VERSION}/bin/jshell" 1
update-alternatives --display java
update-alternatives --config java
rm -r "./${filename}"
