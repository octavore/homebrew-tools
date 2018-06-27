class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.0.1/lightproxy_1.0.1_darwin_amd64.tar.gz"
  sha256 "148c47310634fa424896e9fa6c6eeeb7b10aa174d7b44e22e19e5e7eed27cf64"

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
