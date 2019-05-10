class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.1.0/lightproxy_1.1.0_darwin_amd64.tar.gz"
  version "v1.1.0"
  sha256 "1b442742b46e2e153671cde76b7893ea5d46d01138c2d51212eb64df7c629596"

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
