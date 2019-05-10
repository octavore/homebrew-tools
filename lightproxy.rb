class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.1.1/lightproxy_1.1.1_darwin_amd64.tar.gz"
  version "v1.1.1"
  sha256 "a50223e1d1dc7fd3d3a5f55974c1bb01bfaf023c14c66181785216f8f29e4780"

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
