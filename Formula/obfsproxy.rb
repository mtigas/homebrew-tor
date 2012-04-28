require 'formula'

class Obfsproxy < Formula
  homepage 'https://www.torproject.org/'
  version "0.1.3"
  url 'https://www.torproject.org/dist/obfsproxy/obfsproxy-0.1.3.tar.gz'
  sha256 '15fd924f39d0ffd46e2efc5f594f6a264acea7e3dd2b4b716db2d73d684d088c'
  head 'git://git.torproject.org/git/obfsproxy.git'

  depends_on 'libevent'
  depends_on 'mtigas/tor/tor'

  def install
    system "./autogen.sh" if ARGV.build_head?
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
