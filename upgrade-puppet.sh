#!/bin/bash
#yum install wget
#wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
#sudo dpkg -i puppetlabs-release-precise.deb
sudo rpm -ivh https://yum-enterprise.puppetlabs.com/el/6/extras/x86_64/puppetlabs-enterprise-release-extras-6-2.noarch.rpm
sudo yum -y update
#sudo apt-get install --yes puppet=3.3.2-1puppetlabs1
sudo yum -y install puppet

