vagrant-grails
==============

A very simple server that has the grails developer tools installed on it.

It's designed to be a development environment that more closely matches
the servers that production applications will be deployed on at W&M.

## Prerequisites

You need to have [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and
[vagrant](http://www.vagrantup.com/downloads.html) installed to use this tool.

## Use

To start the machine, navigate in a terminal to the root of this repository and run
`vagrant up`.

Within 5 minutes or so you'll have development server that very closely resembles
the server your application will run on in production (Java package and OS).

The folder `grails_app/` will be automatically shared with the VM and mapped to
`/home/vagrant/grails_app`.

After the VM is up and running, you'll want to run
```
$ vagrant ssh
$ cd grails-app
$ grails run-app
```
to start your grails application.

## Caveats

There isn't a database server currently installed on the vagrant machine, though
we can easily add MariaDB/MySQL or PostgreSQL (the same version that you would
encounter in production).

The environment doesn't match perfectly, the servlet container is supplied by the
grails development package rather than running in Tomcat as it will in production.

There are plans to provide a vagrant machine that will install run Tomcat.  It hasn't
been decided on whether or not that will be an update to this vagrant stack or it's own
machine (or both).
