class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.0"
  url "http://install.spacetimedb.net/0.2.0/spacetime-0.2.0.darwin-universal.tgz"
  sha256 "8e972cf90ad10928624c1ccb7dd1ba0f295ea25dc43a9a0d32f6c5c5b3afbee8"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
