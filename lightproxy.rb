class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.3.0/lightproxy_1.3.0_darwin_amd64.tar.gz"
  version "v1.3.0"
  sha256 "ecbd51edda429b4d6ee538a4d016bed79cf26967ade72be914e9ddb13ef4b033"

  def install
    libexec.install Dir["*"]
    (bin/"lightproxy").write_env_script "#{libexec}/lightproxy", XDG_CONFIG_HOME: etc
  end

  def post_install
    system "lightproxy", "init"
  end

  plist_options manual: "lightproxy"

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>KeepAlive</key>
          <true/>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{opt_bin}/lightproxy</string>
          </array>
          <key>RunAtLoad</key>
          <true />
          <key>StandardErrorPath</key>
          <string>/dev/null</string>
          <key>StandardOutPath</key>
          <string>/dev/null</string>
        </dict>
      </plist>
    EOS
  end

  test do
    system "#{bin}/lightproxy", "version"
  end
end
