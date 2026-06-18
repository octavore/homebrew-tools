class Strudel < Formula
  desc "Build, sign, notarize, and package macOS Swift apps."
  homepage "https://github.com/octavore/strudel"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.4.0/strudel-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "cdd941343c73b2fc448c126b3cba60b84d9187b23a60b81bb9cad2120dcf07b5"
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
