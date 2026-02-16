class Lightproxy < Formula
  desc "Use domain names for localhost services"
  homepage "https://github.com/octavore/lightproxy"
  url "https://github.com/octavore/lightproxy/releases/download/v1.3.0/lightproxy_1.3.0_darwin_amd64.tar.gz"
  version "1.3.0"
  sha256 "ecbd51edda429b4d6ee538a4d016bed79cf26967ade72be914e9ddb13ef4b033"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"lightproxy").write_env_script "#{libexec}/lightproxy", XDG_CONFIG_HOME: etc
  end

  def post_install
    system "#{bin}/lightproxy", "init"
  end

  service do
    run [opt_bin/"lightproxy"]
    keep_alive true
    working_dir HOMEBREW_PREFIX
    log_path var/"log/lightproxy.log"
    error_log_path var/"log/lightproxy.log"
  end

  test do
    system "#{bin}/lightproxy", "version"
  end
end
