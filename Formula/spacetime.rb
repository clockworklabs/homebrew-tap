class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.1-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "f619c3ed562623a98d6f66adcdb5d13b564756b085a268bd2caaa8554271d2f8"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.1-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "874f2c73c59bc5bf637a106577b8b166b35dfbee7ea6e0e9adff7d1570a585d8"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

