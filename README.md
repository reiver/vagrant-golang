# vagrant-golang

Vagrant environment for Golang, with support for both [go](http://golang.org/doc/install) and [gb](https://github.com/constabulary/gb) tools.

## Description

To use this do something like the following:
```
git clone https://github.com/reiver/vagrant-golang

# You're probably goin to want to create your
# own git repository. So delete the one that
# came with this.

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


## Headless

If you are wondering, *why is the VirtualBox window coming up when I run "vagrant up"?*,
then read this section.

My personal preference is that the VirtualBox window comes up. I don't like
(what is called) "headless" mode. With the VirtualBox window being shown,
it there is an error, I can often see it.

However, not everyone likes this. So, if you want to swtich to **headless** mode, then
find the line in `vagrant/Vagrantfile` that says:
```
vb.gui = true
```

And change that to:
```
vb.gui = false
```

And then restart vagrant.
