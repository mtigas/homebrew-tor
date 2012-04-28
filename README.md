# homebrew-tor

This repository contains **[tor][tor]-related** formulae for [Homebrew][brew],
primarily so that users can use the latest 0.2.3.X tor alphas, along with
[obfsproxy][obfsproxy] support.

Currently contains replacement (or new) formulae for:

* Tor 0.2.3.X alpha version of tor
* [obfsproxy][obfsproxy]
* Up-to-date versions of [Arm][arm]

[tor]: https://www.torproject.org/
[brew]: https://github.com/mxcl/homebrew
[obfsproxy]: https://www.torproject.org/projects/obfsproxy.html.en
[arm]: http://www.atagar.com/arm/

## Usage

There are two methods to install packages from this repository.

### Method 1: Tap

Tap the repository into your brew installation

    brew tap mtigas/tor

You'll notice that `arm` and `tor` throw errors -- this is because those formulae
cannot technically replace the original ones in Homebrew core. You can install
any of the packages in this by manually denoting the "tap" prefix (mtigas/tor):

	brew install mtigas/tor/obfsproxy
	brew install mtigas/tor/arm

### Method 2: Raw URL

First, find the raw URL for the formula you want. For example, the raw URL for
the `obfsproxy` formula is:

    https://github.com/mtigas/homebrew-tor/raw/master/Formula/obfsproxy.rb

Once you know the raw URL, simply use `brew install [raw URL]`, like so:

    brew install https://github.com/mtigas/homebrew-tor/raw/master/Formula/obfsproxy.rb

(Due to dependencies, you may need to perform `brew tap mtigas/tor` as in Method 1.)
