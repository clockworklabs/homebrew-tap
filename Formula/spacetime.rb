class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.3.0"
  url "http://install.spacetimedb.net/0.3.0/spacetime-0.3.0.darwin-universal.tgz"
  sha256 "be995dca17b2a2533eaa742892eb5a18568336b5e5f6dc0bfa8ac54f69a1d49f"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
