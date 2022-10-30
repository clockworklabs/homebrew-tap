class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.0"
  url "http://install.spacetimedb.net/0.2.0/spacetime-0.2.0.darwin-universal.tgz"
  sha256 "86e4e83e8a959fcf88058f4e3848744d40c2388cebc3ca75bee0c6c49ca8cc42"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
