class StrudelBeta < Formula
  desc "Build, sign, notarize, and package macOS Swift apps (pre-release channel)."
  homepage "https://github.com/octavore/strudel"
  version "0.5.0-beta.4"
  license "Apache-2.0"

  conflicts_with "strudel", because: "strudel-beta installs the same binaries as strudel"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/strudel/releases/download/v0.5.0-beta.4/strudel-v0.5.0-beta.4-aarch64-apple-darwin.tar.gz"
      sha256 "8bb49e79994e39ed09a8ec5e82565d6842135d4f41d0b05c57c260d4b80c4087"
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
