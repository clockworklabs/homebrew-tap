class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.3.0"
  url "http://install.spacetimedb.net/0.3.0/spacetime-0.3.0.darwin-universal.tgz"
  sha256 "5d618d8ef56bdc2037382e1128e1bc2e032eae946b5ccb7d7013cf432c64604b"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
