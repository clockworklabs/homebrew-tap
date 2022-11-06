class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.4"
  url "http://install.spacetimedb.net/0.2.4/spacetime-0.2.4.darwin-universal.tgz"
  sha256 "ac48b3b3eccb664e7fb06f6732ee1e5bf09151bc5a5d06d3b12c5647de2b5a61"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
