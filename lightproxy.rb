class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.1.0/lightproxy_1.1.0_darwin_amd64.tar.gz"
  version "v1.1.0"
  sha256 "bf5c0529f9e1721e65961c0bce8663cedbb5778b10ba56ba9a517bb385faaa67"

  bottle :unneeded

  def install
    bin.install "lightproxy"
  end

  def post_install
    system "lightproxy", "init"
  end

  test do
    system "#{bin}/lightproxy", "version"
  end
end
