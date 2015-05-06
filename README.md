# vagrant-golang

Vagrant environment for Golang, with support for both [go](http://golang.org/doc/install) and [gb](https://github.com/constabulary/gb) tools.

## IP Address

TL;DR: **10.10.10.10**

Unless you change it, the `vagrant/Vagrantfile` file is configured to use the IP address
`10.10.10.10`

This is part of (what is called the) "reserved private address space" for IPv4.
No public computer on the Internet will use this IP address.

(However, if you are on a private network (which could include your ISP,
your office, etc) it is possible they re using it for something. If you
have a conflict, simple change that IP address to something else, and
restart vagrant.)

