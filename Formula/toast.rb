class Toast < Formula
  desc "Monitor thermal throttling on your Mac."
  homepage "https://github.com/octavore/toast"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/octavore/toast/releases/download/v0.1.0/toast-v0.1.0.tar.gz"
      sha256 "9aa382108e37e2ba24c2a1c8d82b43bf4299a9ddfc827aec8462a4ee8f77e629"
    elsif Hardware::CPU.intel?
      odie "toast is not supported on Intel macs"
    end
  end

  def install
    bin.install "toast"
  end

  test do
    system bin/"toast", "--help"
  end
end