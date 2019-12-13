class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.2.1/lightproxy_1.2.1_darwin_amd64.tar.gz"
  version "v1.2.1"
  sha256 "8998c2d499d2676279b5ac9532344d1564cb5c2237688e10b6096b0fa5382b4d"

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
