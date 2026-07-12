class StrudelBeta < Formula
  desc "Build, sign, notarize, and package macOS Swift apps (pre-release channel)."
  homepage "https://github.com/octavore/strudel"
  version "0.5.0-beta.3"
  license "Apache-2.0"

  conflicts_with "strudel", because: "strudel-beta installs the same binaries as strudel"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.5.0-beta.3/strudel-v0.5.0-beta.3-aarch64-apple-darwin.tar.gz"
      sha256 "7f531144ce41fad14e60e88f0d233114d81acd4388b31bb90c90e5ba872a488a"
    elsif Hardware::CPU.intel?
      odie "strudel is not supported on Intel macs"
    end
  end

  def install
    bin.install "strudel"
  end

  test do
    system bin/"strudel", "--help"
  end
end
