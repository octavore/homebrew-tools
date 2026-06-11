class Strudel < Formula
  desc "Build, sign, notarize, and package macOS Swift apps."
  homepage "https://github.com/octavore/strudel"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.2.1/strudel-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "f880da736fd8de22a735be6e55b572c08dfd6e6400f33c5571d702ea70bb62ed"
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
