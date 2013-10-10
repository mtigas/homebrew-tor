# homebrew-tor

This repository contains **[tor][tor]-related** formulae for [Homebrew][brew],
primarily so that users can use the latest 0.2.5.X tor series.

**You will need to [install Homebrew][brew_install] to use this**, see
[here][brew_install].

Currently contains replacement (or new) formulae for:

* Tor 0.2.5.X (unstable) version of tor. Currently 0.2.5.1-alpha.

[tor]: https://www.torproject.org/
[brew]: http://mxcl.github.com/homebrew/
[brew_install]: https://github.com/mxcl/homebrew/wiki/installation

(Note: [obfsproxy][obfsproxy] used to be included in this, but recent versions
are now installable via [pip][pip], without any of the `ImportError` issues
of previous versions. For obfsproxy support, install the `tor` from this tap
-- see **Usage** below -- and then install obfsproxy with pip:
`pip install obfsproxy`.)

[obfsproxy]: https://www.torproject.org/projects/obfsproxy.html.en
[pip]: https://pypi.python.org/pypi/pip

## Usage

There are two methods to install packages from this repository.

### Method 1: Tap

Tap the repository into your brew installation

    brew tap mtigas/tor

You'll notice that `brew install tor` throws warnings -- this is because
the formula cannot technically replace the original one in Homebrew core.
You can install any of the packages in repo by manually denoting the "tap"
prefix (mtigas/tor):

	brew install mtigas/tor/tor

### Method 2: Raw URL

First, find the raw URL for the formula you want. For example, the raw URL for
the `tor` formula is:

    https://github.com/mtigas/homebrew-tor/raw/master/Formula/tor.rb

Once you know the raw URL, simply use `brew install [raw URL]`, like so:

    brew install https://github.com/mtigas/homebrew-tor/raw/master/Formula/tor.rb

(Due to dependencies, you may need to perform `brew tap mtigas/tor` as in Method 1.)
