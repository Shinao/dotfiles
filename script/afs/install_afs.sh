sudo apt-get remove -y module-assistant openafs-modules-source openafs-client openafs-krb5 heimdal-clients
sudo apt-get remove -y --purge openafs*
sudo apt-get install -y openafs*
sudo apt-get install -y module-assistant openafs-modules-source openafs-client openafs-krb5 heimdal-clients
sudo module-assistant prepare openafs-modules
sudo -y module-assistant auto-install openafs-modules
sudo cp krb5-conf /etc/
sudo cp CellServDB /etc/openafs/
sudo cp ThisCell /etc/openafs/
sudo /etc/init.d/openafs-client start
