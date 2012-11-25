require 'formula'

class Obfsproxy < Formula
  homepage 'https://www.torproject.org/'
  version "0.1.4"
  url 'https://archive.torproject.org/tor-package-archive/obfsproxy/obfsproxy-0.1.4.tar.gz'
  sha256 '6e0ed147e9be4b9f89862b5e2597d355427e977a69c8dfb6e15c04530d3bedb3'
  head 'git://git.torproject.org/git/obfsproxy.git'

  depends_on 'libevent'
  depends_on 'openssl'
  depends_on 'mtigas/tor/tor'

  def install
    system "./autogen.sh" if ARGV.build_head?
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
