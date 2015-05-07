#!/bin/bash

# Description:
#
#     This bash script is used to provision the virtualbox that vagrant creates.
#     I.e., it installs and configures stuff; and also deals with updating and
#     upgrading.
#
#     NOTE that this is run within the virtualbox! That means that, for example,
#     the paths to files you see in this script are from the perspective of
#     someone (or something) on the virtualbox.
#
#     One consequence of that is that to access files in this directory (or a
#     sub-subdirectory of this directory, etc) that these are found under the
#     /vagrant directory.
#



#
# M A I N
#

echo "############################################################"
echo "#                                                          #"
echo "# Starting provisioning script...                          #"
echo "#                                                          #"
echo "############################################################"
echo
echo



echo "############################################################"
echo "#                                                          #"
echo "# sudo apt-get -y update                                   #"
echo "#                                                          #"
echo "############################################################"
echo
echo
sudo apt-get -y update



echo "############################################################"
echo "#                                                          #"
echo "# sudo apt-get -y install finger                           #"
echo "#                                                          #"
echo "############################################################"
echo
echo
sudo apt-get -y install finger

echo "############################################################"
echo "#                                                          #"
echo "# sudo apt-get -y install tree                             #"
echo "#                                                          #"
echo "############################################################"
echo
echo
sudo apt-get -y install tree

echo "############################################################"
echo "#                                                          #"
echo "# sudo apt-get -y install curl                             #"
echo "#                                                          #"
echo "############################################################"
echo
echo
sudo apt-get -y install curl

echo "############################################################"
echo "#                                                          #"
echo "# sudo apt-get -y install git                              #"
echo "#                                                          #"
echo "############################################################"
echo
echo
sudo apt-get -y install git



echo "############################################################"
echo "#                                                          #"
echo "# Installing Go                                            #"
echo "#                                                          #"
echo "############################################################"
echo
echo
#GOLANG_TARBALL='go1.4.2.linux-amd64.tar.gz'
GOLANG_TARBALL='go1.4rc2.linux-386.tar.gz'
pushd /usr/local/
wget "https://storage.googleapis.com/golang/${GOLANG_TARBALL}"
tar -zxvf "${GOLANG_TARBALL}"
rm -f "${GOLANG_TARBALL}"
popd
pushd /home/vagrant
mkdir -p bin
chown vagrant.vagrant bin
cd bin
ln -s /usr/local/go/bin/go    go
ln -s /usr/local/go/bin/godoc godoc
ln -s /usr/local/go/bin/gofmt gofmt
popd

echo "############################################################"
echo "#                                                          #"
echo "# Creating /usr/local/golang                               #"
echo "#                                                          #"
echo "############################################################"
echo
echo
mkdir /usr/local/golang

echo "############################################################"
echo "#                                                          #"
echo "# Installing gb                                            #"
echo "#                                                          #"
echo "############################################################"
echo
echo
sudo GOPATH=/usr/local/golang /usr/local/go/bin/go get github.com/constabulary/gb/...
pushd /home/vagrant
mkdir -p bin
chown vagrant.vagrant bin
cd bin
ln -s /usr/local/golang/bin/gb gb
popd



#echo "############################################################"
#echo "#                                                          #"
#echo "# sudo apt-get -y upgrade                                  #"
#echo "#                                                          #"
#echo "############################################################"
#echo
#echo
#sudo apt-get -y upgrade



echo "############################################################"
echo "#                                                          #"
echo "# And... we are done.                                      #"
echo "#                                                          #"
echo "############################################################"
echo
echo
