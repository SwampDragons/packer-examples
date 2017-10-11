#Packer Examples
The templates in this repo are meant to be an introduction to new users of 
Packer. They provide configuration examples for stripped-down vms, and should
work out of the box assuming the user has properly installed packer and any 
necessary software.

The focus of this repository is to provide useful real-world examples of all the
core Packer builders, processors, and post-processors that are supported by 
Hashicorp.

Below is a checklist of core-supported Packer features you will see represented
in this repo; the goal is to show an example of each feature on the list:

###Builders
- [x] Amazon EC2
- [ ] Azure
- [x] Docker
- [ ] Google Cloud
- [ ] VMware
- [ ] VirtualBox

###Provisioners
- [x] File
- [x] PowerShell
- [x] Shell
- [x] Windows Restart
- [ ] Windows Shell

###Post-Processors
- [ ] Amazon Import
- [ ] Artifice
- [ ] Atlas
- [ ] Docker
- [ ] Local Shell
- [ ] Manifest
- [ ] Vagrant
- [ ] Vagrant Cloud

###Non-Core but popular
- [x] Ansible