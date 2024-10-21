class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.12.0"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.12.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "6086e615121012675de569b984b52b1bf61b9bbb3eb84317a3f6e9a59220a039"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.12.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "f0af3588ae0ee98850c288f3f16fd6d68b06df19fa8cfbc49c02f5cd2c2c9209"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
