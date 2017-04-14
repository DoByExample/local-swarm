# Local Swarm cluster

Run a Swarm cluster locally using Vagrant.

This will create and setup 3 Vagrant machines in a private network (10.0.7.0/24):

* Swarm manager: 10.0.7.100
* Swarm node 1: 10.0.7.11
* Swarm node 2: 10.0.7.12

# Requirements

Install [Vagrant][vagranthome] and [Docker][dockerhome] on your machine.

Ensure you have a valid [Vagrant provider][vagrantprovider] installed.

Install vagrant-alpine plugin 

``` bash
$ vagrant plugin install vagrant-alpine
```

# Instructions

```
$ git clone https://github.com/DoByExample/local_swarm.git
$ cd local_swarm
$ bash ./start_swarm.sh
```

# Resources

[vagranthome]: https://www.vagrantup.com/docs/installation/  "Vagrant installation"
[vagrantprovider]: https://www.vagrantup.com/docs/providers/ "Vagrant providers"
[dockerhome]: https://docs.docker.com/engine/installation/  "Docker installation"
[vagran-alpine]: https://github.com/maier/vagrant-alpine "Vagrant alpine plugin"
[vagrant-swarm-cluster]: https://github.com/deviantony/vagrant-swarm-cluster/ "Vagrant swarm cluster"
