F2C
=============

[![Build Status](https://travis-ci.org/influxdb/influxdb-ruby.png?branch=master)](https://travis-ci.org/lukenny/F2C)

Summary
-------
```
F2C converts Fahrenheit to Celsius and vice versa
Fahrenheit to Celsius formulas http://www.manuelsweb.com/temp.htm
```

Installation
------------
```
$ [sudo] gem install F2C
```

Usage
-----
```
launch irb
require 'F2C'
Convert.F2C(value) #converts Fahrenheit to Celsius
Convert.C2F(value) #converts Celsius to Fahrenheit
```
Output
------
```
$ irb
irb(main):001:0> require "F2C"
=> true
irb(main):002:0> Convert.F2C 100
=> "100 Fahrenheit is 38 Celsius"
```
