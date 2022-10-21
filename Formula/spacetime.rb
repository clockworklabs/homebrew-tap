class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.0"
  url "https://install.spacetimedb.net/0.2.0/spacetime-0.2.0.darwin-universal.tgz"
  sha256 "10e4634940f76ad2460ae86e5ae72da82a61c0f08710180aa0d55f363cd3d64a"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
