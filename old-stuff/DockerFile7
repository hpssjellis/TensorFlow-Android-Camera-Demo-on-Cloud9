# Start with ubuntu 14.04.1 (LTS).
FROM ubuntu:14.04.1

MAINTAINER Joshua Lee <muzili@gmail.com>

# Never ask for confirmations
ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe restricted" > /etc/apt/sources.list && \
 echo "deb http://archive.ubuntu.com/ubuntu trusty-updates main universe restricted" >> /etc/apt/sources.list && \
 echo "deb http://archive.ubuntu.com/ubuntu trusty-security main universe restricted" >> /etc/apt/sources.list

# Add i386 arch packages and update
RUN dpkg --add-architecture i386 && \
    apt-get update -qq && \
    apt-get dist-upgrade -y --no-install-recommends


# Install Development packages
RUN apt-get install -y --no-install-recommends apt-transport-https ca-certificates \
    software-properties-common wget git curl unzip zip bzip2 p7zip-full less nano vim \
    build-essential make expect libssl-dev man libstdc++6:i386 lib32z1 lib32bz2-1.0 lib32ncurses5 

# Java
# Information Of Package
ENV JDK_VERSION jdk1.8.0_25
ENV JDK_PACKAGE jdk-8u25-linux-x64.tar.gz
#http://download.oracle.com/otn-pub/java/jdk/6u45-b06/jdk-6u45-linux-x64.bin
#http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz
#http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.tar.gz
#http://download.oracle.com/otn-pub/java/jdk/7u72-b14/jdk-7u72-linux-x64.tar.gz
RUN curl -b gpw_e24=http%3A%2F%2Fwww.oracle.com -b oraclelicense=accept-securebackup-cookie \
    -L http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz | \
    tar -zx -C /usr/local && \
    ln -s /usr/local/$JDK_VERSION /usr/local/java && \
    rm -rf /tmp/$JDK_PACKAGE

# Install android sdk
ENV ANDROID_SDK_VERSION r23.0.2
#ENV ANDROID_SDK_VERSION all-in-one
#http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz
RUN curl -L http://dl.google.com/android/android-sdk_$ANDROID_SDK_VERSION-linux.tgz | \
    tar -xz -C /usr/local && \
    ln -sf /usr/local/android-sdk-linux /usr/local/android-sdk

# Install android ndk
ENV ANDROID_NDK_VERSION r10c
#http://dl.google.com/android/ndk/android-ndk-r10c-linux-x86_64.bin
RUN curl -L http://dl.google.com/android/ndk/android-ndk-$ANDROID_NDK_VERSION-linux-x86_64.bin \
    -o /tmp/android-ndk-$ANDROID_NDK_VERSION-linux-x86_64.bin && \
    7z x /tmp/android-ndk-$ANDROID_NDK_VERSION-linux-x86_64.bin -o/usr/local && \
    ln -sf /usr/local/android-ndk-$ANDROID_NDK_VERSION /usr/local/android-ndk && \
    rm -rf /tmp/android-ndk-$ANDROID_NDK_VERSION-linux-x86_64.bin

# Install apache ant
ENV ANT_VERSION 1.9.4
#http://mirrors.aliyun.com/apache/ant/binaries/apache-ant-1.9.4-bin.tar.gz
#https://www.apache.org/dist/ant/binaries/apache-ant-1.9.4-bin.tar.gz
RUN curl -L http://www.apache.org/dist/ant/binaries/apache-ant-$ANT_VERSION-bin.tar.gz | \
    tar -xz -C /usr/local && \
    ln -sf /usr/local/apache-ant-$ANT_VERSION /usr/local/apache-ant

# Install Gradle
ENV GRADLE_VERSION 2.1
#http://services.gradle.org/distributions/gradle-2.1-bin.zip
RUN curl -L http://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip \
    -o /tmp/gradle-$GRADLE_VERSION-bin.zip  && \
    unzip -qq /tmp/gradle-$GRADLE_VERSION-bin.zip -d /usr/local/ && \
    ln -sf /usr/local/gradle-$GRADLE_VERSION /usr/local/gradle && \
    rm /tmp/gradle-$GRADLE_VERSION-bin.zip

# Environment variables
ENV JAVA_HOME /usr/local/java
ENV JRE_HOME /usr/local/java/jre
ENV ANDROID_SDK_HOME /usr/local/android-sdk
ENV ANDROID_NDK_HOME /usr/local/android-ndk
ENV ANDROID_HOME $ANDROID_SDK_HOME
ENV GRADLE_HOME /usr/local/gradle
ENV ANT_HOME /usr/local/apache-ant
ENV PATH $PATH:$JAVA_HOME/bin:$JRE_HOME/bin
ENV PATH $PATH:$ANDROID_SDK_HOME/tools
ENV PATH $PATH:$ANDROID_SDK_HOME/platform-tools
ENV PATH $PATH:$ANDROID_NDK_HOME
ENV PATH $PATH:$GRADLE_HOME/bin
ENV PATH $PATH:$ANT_HOME/bin

# Running many at the same time was causing problems. So, running one-by-one:
RUN echo y | android update sdk --no-https --all --no-ui --force --filter android-17 && \
    echo y | android update sdk --no-https --all --no-ui --force --filter android-19 && \
    echo y | android update sdk --no-https --all --no-ui --force --filter android-21 && \
    echo y | android update sdk --no-https --all --no-ui --force --filter tools && \
    echo y | android update sdk --no-https --all --no-ui --force --filter platform-tools && \
    echo y | android update sdk --no-https --all --no-ui --force --filter build-tools-21.1.1 && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-android-m2repository && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-android-support && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-admob_ads_sdk && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-analytics_sdk_v2 && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-gcm && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-google_play_services && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-m2repository && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-play_apk_expansion && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-play_billing && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-play_licensing && \
    echo y | android update sdk --no-https --all --no-ui --force --filter extra-google-webdriver && \
    echo y | android update sdk --no-https --all --no-ui --force --filter addon-google_apis-google-21 && \
    echo y | android update sdk --no-https --all --no-ui --force --filter addon-google_apis-google-19 && \
    echo y | android update sdk --no-https --all --no-ui --force --filter addon-google_apis-google-17
#
# Clean up
RUN apt-get clean
