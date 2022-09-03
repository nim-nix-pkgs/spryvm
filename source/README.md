# SpryVM

[![nimble](https://raw.githubusercontent.com/yglukhov/nimble-tag/master/nimble_js.png)](https://github.com/yglukhov/nimble-tag)

[![Build Status](https://travis-ci.org/gokr/spryvm.svg?branch=master)](https://travis-ci.org/gokr/spryvm)

This is the VM for the [Spry language](http://sprylang.se/), packaged as a Nim library.

# What is this?

This is **not where you start out with Spry**, instead take a look at [the language website](http://sprylang.se) and install the [Spry](http://github.com/gokr/spry) nimble package that in turn **depends** on this package to implement usable Spry interpreters. This repository contains only the core Parser/Interpreter.

# Installation

SpryVM mainly depends on Nim, so it should work fine on Windows, OSX, Linux etc, but
for the moment **I use Linux for Spry development**. The shell scripts will probably be rewritten in nimscript and thus everything can be fully cross platform - feel free to help me with that!

1. Install librocksdb-dev which should be one of the few dependencies.

2. Install Nim, now works with 1.2.

3. Clone this repo. Then run `nimble install` in it.

4. Finally run all tests using `cd tests && ./run.sh` (runjs.sh is for running them in nodejs, but not fully green right now). Tests should be green for **Nim 1.2.0**.
