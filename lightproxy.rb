class Lightproxy < Formula
  desc "diff tool with browser-based GUI"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v0.1.0/lightproxy-0.1.0.tar.gz"
  sha256 "71229b19b56df001967ad296ff9e20d7d5eb546f7ab9bbaf32170ed190d9aafb"

  bottle :unneeded

  def install
    bin.install "lightproxy"
  end

  def post_install
    system "lightproxy", "init"
  end

  test do
    system "#{bin}/lightproxy", "--version"
  end
end
