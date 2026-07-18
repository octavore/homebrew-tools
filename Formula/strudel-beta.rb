class StrudelBeta < Formula
  desc "Build, sign, notarize, and package macOS Swift apps (pre-release channel)."
  homepage "https://github.com/octavore/strudel"
  version "0.5.1-beta.1"
  license "Apache-2.0"

  conflicts_with "strudel", because: "strudel-beta installs the same binaries as strudel"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.5.1-beta.1/strudel-v0.5.1-beta.1-aarch64-apple-darwin.tar.gz"
      sha256 "93b75f45de1f3196db87d128aae3d8898e732953dd0bfe3530965c5e25898849"
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
