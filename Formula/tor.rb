require 'formula'

class Tor < Formula
  homepage 'https://www.torproject.org/'
  version "0.2.5.1"
  #url 'https://archive.torproject.org/tor-package-archive/tor-0.2.4.14-alpha.tar.gz'
  url 'https://www.torproject.org/dist/tor-0.2.5.1-alpha.tar.gz'
  sha256 '3100d8f0ccb296e82f1d3602266d4dcde801daace82af74f5f27ee2fca7bb4a8'
  head 'git://git.torproject.org/git/tor.git'

  option 'with-upnp', 'Enable upnp "PortForwarding" option.'

  depends_on 'libevent'
  depends_on 'openssl'
  depends_on 'miniupnpc' if build.include? 'with-upnp'

  def install
    configargs = %W[
             --prefix=#{prefix}
             --disable-dependency-tracking
           ]
    configargs << '--enable-upnp' if build.include? 'with-upnp'

    system "./autogen.sh" if ARGV.build_head?
    system "./configure", *configargs
    system "make install"

    plist_path.write startup_plist
    plist_path.chmod 0644
  end

  def startup_plist
    return <<-EOPLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <true/>
    <key>UserName</key>
    <string>#{`whoami`.chomp}</string>
    <key>ProgramArguments</key>
    <array>
        <string>#{HOMEBREW_PREFIX}/bin/tor</string>
    </array>
    <key>WorkingDirectory</key>
    <string>#{HOMEBREW_PREFIX}</string>
  </dict>
</plist>
    EOPLIST
  end

  def caveats; <<-EOS.undent
    You can start tor automatically on login with:
      mkdir -p ~/Library/LaunchAgents
      cp #{plist_path} ~/Library/LaunchAgents/
      launchctl load -w ~/Library/LaunchAgents/#{plist_path.basename}
    EOS
  end
end
