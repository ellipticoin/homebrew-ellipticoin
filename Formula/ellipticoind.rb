class Ellipticoind < Formula
  desc "Ellipticoin node and miner"
  homepage "https://www.ellipticoin.org/"
  url "https://github.com/ellipticoin/ellipticoind/releases/download/v0.1.1-alpha/ellipticoind-0.1.1-mac-osx.tar.bz2"
  sha256 "cedcc1ef66f33fd599aeafe81654a71166b7299ac80e3cea30b02696fb195c0a"
  depends_on "postgres"
  depends_on "redis"

  def install
     prefix.install Dir["*"]
     inreplace "#{prefix}/bin/ellipticoind", %q{"$(cd "$(dirname "$SELF")/.." && pwd -P)"}, prefix
  end
end
