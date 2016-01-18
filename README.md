# logrotate

[![Build Status](https://travis-ci.org/lgbarn/logrotate.png?branch=master)](https://travis-ci.org/lgbarn/logrotate)


#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with logrotate](#setup)
    * [What logrotate affects](#what-logrotate-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with logrotate](#beginning-with-logrotate)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module will install a basic template for logrotate.
This should be a starting point for getting logrotate installed on your Linux server

## Module Description

This module will install logrotate to your server and give a basic configuration.

## Setup

### What logrotate affects

* RPM Package logrotate will be installed

### Beginning with logrotate

Install module with `sudo puppet module install logrotate` or use r10k.

## Usage

Use the following syntax to get this module working:

~~~
include logrotate
~~~

or

~~~
class { 'logrotate': }
~~~

## Reference

####Private Classes
* [`logrotate::config`](#logrotateconfig): Configures the module.
* [`logrotate::install`](#logrotateinstall): Installs logrotate package on your server.
* [`logrotate::params`](#logrotateparams): Sets parameters for module.

#### Private Classes


## Limitations

This module has only been tested on RedHat,CentOS and it derivatives.
All other distributions are not supported.

## Development

This module is public and can be found on github[here](https://github.com/lgbarn/logrotate)

