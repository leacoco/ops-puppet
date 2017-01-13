#!/bin/bash

echo "Installing some common tools needed"
	apt-get install --yes vim curl

echo "Puppet version is $(puppet --version)"

if [ $(puppet --version) != "3.8.7" ]; then
	echo "Updating Puppet"

	apt-get install --yes lsb-release

	DIST_NAME=$(lsb_release --codename --short)
	DEB="puppetlabs-release-${DIST_NAME}.deb"
	DEB_PROVIDES="/etc/apt/sources.list.d/puppetlabs.list"

	if [ ! -e $DEB_PROVIDES ]; then
		sudo apt-get install --yes wget && wget -q http://apt.puppetlabs.com/$DEB
		sudo dpkg -i $DEB
	fi

	sudo apt-get update
	sudo apt-get install -o Dpkg::Options::="--force-confold" --force-yes -y puppet
else
	echo "Puppet is Up to Date"
fi

echo "Running Puppet ..............."
sudo puppet apply /etc/puppet/manifests/site.pp
