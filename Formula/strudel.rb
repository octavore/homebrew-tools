class Strudel < Formula
  desc "Build, sign, notarize, and package macOS Swift apps."
  homepage "https://github.com/octavore/strudel"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.3.1/strudel-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "a57c88c0a9e89453e0eb2e3a7edc3c854e9a273fb02cb6279e72c3be62709f69"
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
