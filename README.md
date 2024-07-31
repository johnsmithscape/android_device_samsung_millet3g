# android_device_samsung_millet3g
# Needs a lot of work

### Galaxy Tab 4 8.0 (SM-T331)
<img name="Samsung Galaxy Tab4 8.0" src="https://vedroid.com/img/tablets/samsung-galaxy-tab-4-8_0/04.jpg" width="300" height="390" alt="Samsung Galaxy Tab4 8.0(White)" title="Samsung Galaxy Tab4 8.0(White)">

## Prepare environment for CyanogenMod 12.1 (android 5.1 Lolipop) building
#### You can use ubuntu 14.04/16.04 for building
##### Update system
`sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y`
##### Reboot (recommended)
`sudo reboot`
##### Install necessary packages
`sudo apt-get install git gnupg flex bison gperf build-essential   zip curl x11proto-core-dev   libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386   libgl1-mesa-dev g++-multilib tofrodos   python-markdown libxml2-utils xsltproc libcurl4-openssl-dev libssl-dev java-package`
#### Python 3.6 backporting for modern git-repo support
`wget https://www.python.org/ftp/python/3.6.15/Python-3.6.15.tar.xz`

`tar xpvf Python-3.6.15.tar.xz`

`cd Python-3.6.15/`

`./configure` 

`make -j$(nproc)`

`sudo make install`
##### For repo working
`sudo ln -sf /usr/local/bin/python3.6 /usr/bin/python`
##### Set default python (If some programs like apt can't work with python 3.6)
`sudo ln -sf /usr/bin/python2 /usr/bin/python`
#### Build git 2.7.4 (minimal version for repo properly work)
`wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.7.4.tar.xz`

`tar xpvf git-2.7.4.tar.xz` 

`cd git-2.7.4/`

`./configure` 

`make -j16`

`sudo make install`

##### For repo working

`git config --global user.email "*your email*"`

`git config --global user.name "*your name*"`

#### Download oracle java 7 and maven2
##### Oracle Java 7
`wget https://repo.huaweicloud.com/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz`

`make-jpkg jdk-7u80-linux-x64.tar.gz`

`sudo dpkg -i oracle-java7-jdk_7u80_amd64.deb`
##### Apache Maven 2
`wget https://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.zip`
`unzip apache-maven-2.2.1-bin.zip` 
`sudo cp -r apache-maven-2.2.1 /usr/local/`
##### Set M2_HOME and JAVA_HOME in .bashrc
`nano .bashrc`

##### Add this lines to .bashrc
`export M2_HOME=/usr/local/apache-maven-2.2.1`

`export JAVA_HOME=/usr/lib/jvm/oracle-java7-jdk-amd64`

`export PATH=$M2_HOME/bin:$JAVA_HOME/bin:$PATH`
##### Set HTTPS links in maven2 settings (because HTTP is deprecated and maven2 can't download its dependencies)
`mkdir ~/.m2`

`nano ~/.m2/settings.xml`

##### Add lines to ~/.m2/settings.xml from settings-maven2.xml (located in that repository)
