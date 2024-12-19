# put all installed packagesin a txt file
rpm -qa > installed_packages.txt

# install all packages in txt file
sudo xargs -a installed_packages.txt dnf install -y
