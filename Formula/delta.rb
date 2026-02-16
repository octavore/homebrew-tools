class Delta < Formula
  desc "diff tool with browser-based GUI"
  homepage "https://github.com/octavore/delta"
  url "https://github.com/octavore/delta/releases/download/v0.6.1/delta-0.6.1.tar.gz"
  sha256 "f0f2ff1995a53579fe188c5e70a1a649926b5bca7026160f619e9d37b35f4a5f"
  license "MIT"

  def install
    bin.install "delta"
  end

  test do
    system "#{bin}/delta", "--version"
  end
end
