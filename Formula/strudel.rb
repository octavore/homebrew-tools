class Strudel < Formula
  desc "Build, sign, notarize, and package macOS Swift apps."
  homepage "https://github.com/octavore/strudel"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.5.1/strudel-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "3e4ad6c8b49d0cbc5b17c1f60e7a57375408c3b72ab0b643a720d52ceab02ca4"
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
