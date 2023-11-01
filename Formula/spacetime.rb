class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.7.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.2-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "a0e41884addf22b01d829da22bda87e2c41c4ebd331191861c6426df791ea14c"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.2-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "ff0fb6ed13c1306782f82c7e3ad41e92906b1178181d4c22ca68b212d2bf5dfd"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

