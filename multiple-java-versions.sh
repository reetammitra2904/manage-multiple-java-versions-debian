
#!/bin/bash
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
