# Vagrant VM Provisioning

This repository contains the necessary files to provision two VMs using Vagrant. The VMs are based on Ubuntu Desktop and will be automatically provisioned with Chef and Wireshark.

## VM Configuration

To configure the VMs to communicate using ports 8080 and 8090, you can add the following lines to the `Vagrantfile`:

```ruby
config.vm.network "forwarded_port", guest: 8080, host: 8080
config.vm.network "forwarded_port", guest: 8090, host: 8090
```

Make sure to place these lines inside the `Vagrant.configure` block.

This will redirect the host's traffic on ports 8080 and 8090 to the corresponding ports on the VMs.

Remember to reload the VMs using `vagrant reload` after making these changes.


## Prerequisites
Before proceeding with the provisioning, make sure you have the following software installed on your machine:
- Vagrant
- VirtualBox

## Getting Started
To get started, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the cloned repository directory.
3. Run the `vagrant up` command to start the provisioning process.
4. Wait for the VMs to be created and provisioned.
5. Once the provisioning is complete, you can access the VMs using SSH or any other preferred method.

## Additional Configuration
If you need to customize the provisioning process or add any additional software, you can modify the `Vagrantfile` and the Chef cookbooks accordingly.

Happy provisioning!

