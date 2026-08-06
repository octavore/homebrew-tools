class Strudel < Formula
  desc "Build, sign, notarize, and package macOS Swift apps."
  homepage "https://github.com/octavore/strudel"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.6.0/strudel-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "4a2496a450706534fdf1a4cb98780e58c03a6469143876dc33b63012e16e3557"
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
