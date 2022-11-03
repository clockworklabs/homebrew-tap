class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.4"
  url "http://install.spacetimedb.net/0.2.4/spacetime-0.2.4.darwin-universal.tgz"
  sha256 "10e8ea86279b3aab4672af079a2ca2c2554be4018445619b98c9ebf6e3e420ce"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
