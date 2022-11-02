class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.3"
  url "http://install.spacetimedb.net/0.2.3/spacetime-0.2.3.darwin-universal.tgz"
  sha256 "9c0112167d7e833e5b9fc736e64f3cd865ef5f319fbc3ea60643fcda445dceef"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
