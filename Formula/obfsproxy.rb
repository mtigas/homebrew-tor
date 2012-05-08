require 'formula'

class Obfsproxy < Formula
  homepage 'https://www.torproject.org/'
  version "0.1.4"
  url 'https://gitweb.torproject.org/obfsproxy.git/snapshot/94ebc4c3edf1e3e5f313444e59981ac557578df5.tar.gz'
  #sha256 'df1e2ad6b4f64a4701a9696c886332f375d0303d13deb3967c0d9da177bf09a3'
  head 'git://git.torproject.org/git/obfsproxy.git'

  depends_on 'libevent'
  depends_on 'mtigas/tor/tor'

  def install
    system "./autogen.sh"# if ARGV.build_head?
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
