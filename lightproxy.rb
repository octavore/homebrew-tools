class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.2.0/lightproxy_1.2.0_darwin_amd64.tar.gz"
  version "v1.2.0"
  sha256 "b725ca2a078805349bdb013331ba8fed160025661f979392c490f4c1d4537519"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    (bin/"lightproxy").write_env_script "#{libexec}/lightproxy", :XDG_CONFIG_HOME => etc
  end

  def post_install
    system "lightproxy", "init"
  end

  test do
    system "#{bin}/lightproxy", "version"
  end
end
