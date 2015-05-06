# vagrant-golang

Vagrant environment for Golang, with support for both [go](http://golang.org/doc/install) and [gb](https://github.com/constabulary/gb) tools.

## Description

To use this do something like the following:
```
git clone https://github.com/reiver/vagrant-golang

rm -fR .git

cd vagrant

vagrant up

vagrant ssh

# Now you are inside of the vagrant-based virtual machine.

cd /vagrant_project

nano src/main.go

# Put something like the following in main.go
#
# package main
#
# import "fmt"
#
# func main() {
#     fmt.Println("Hello world!")
# }

gb build

./bin/main
```

## IP Address

TL;DR: **10.10.10.10**

Unless you change it, the `vagrant/Vagrantfile` file is configured to use the IP address
`10.10.10.10`

This is part of (what is called the) "reserved private address space" for IPv4.
No public computer on the Internet will use this IP address.

(However, if you are on a private network (which could include your ISP,
your office, etc) it is possible they are using it for something. If you
have a conflict, simply change that IP address in `vagrant/Vagrantfile`
to something else, and restart vagrant.)

