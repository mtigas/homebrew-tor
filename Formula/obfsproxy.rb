require 'formula'

class Obfsproxy < Formula
  homepage 'https://www.torproject.org/'
  version "0.1.4"
  url 'https://gitweb.torproject.org/obfsproxy.git/snapshot/94ebc4c3edf1e3e5f313444e59981ac557578df5.tar.gz'
  sha256 '475717e63531201cce5903a70b9ffe8918a03b4050b4dcd75850f6937c1ced9d'
  head 'git://git.torproject.org/git/obfsproxy.git'

  depends_on 'libevent'
  depends_on 'mtigas/tor/tor'

  def install
    system "./autogen.sh" if ARGV.build_head?
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
