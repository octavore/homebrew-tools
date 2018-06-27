class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.0.2/lightproxy_1.0.2_darwin_amd64.tar.gz"
  version "v1.0.2"
  sha256 "faf8027a6562fd41e5da90bbd399ebe6a01eeaf5ab380d644cef5c63b60548ed"

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
