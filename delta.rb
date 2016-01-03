class Delta < Formula
  desc "diff tool with browser-based GUI"
  homepage "https://github.com/octavore/delta"
  url "https://github.com/octavore/delta/releases/download/v0.5.0/delta-0.5.0.tar.gz"
  sha256 "4e907c9f00d418d3b6b02a19639047ac1a9fb4126f905ebfd773641e43fafa0d"

  bottle :unneeded

  def install
    bin.install "delta"
  end

  test do
    system "#{bin}/delta", "--version"
  end
end
