# homebrew-tor

This repository contains **tor-related** formulae for [Homebrew](https://github.com/mxcl/homebrew).

Currently contains replacement (or new) formulae for:

* Tor 0.2.3.X alpha version of tor (instead of 0.2.2.X stable in Homebrew core)
* Obfsproxy
* Arm

## Usage

There are two methods to install packages from this repository.

### Method 1: Raw URL

First, find the raw URL for the formula you want. For example, the raw URL for
the `obfsproxy` formula is:

    https://github.com/mtigas/homebrew-tor/raw/master/Formula/obfsproxy.rb

Once you know the raw URL, simply use `brew install [raw URL]`, like so:

    brew install https://github.com/mtigas/homebrew-tor/raw/master/Formula/obfsproxy.rb

### Method 2: Tap

Tap the repository into your brew installation

    brew tap mtigas/homebrew-tor

Then install obfsproxy

	brew install obfsproxy
