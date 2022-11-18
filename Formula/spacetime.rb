class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.3.0"
  url "http://install.spacetimedb.net/0.3.0/spacetime-0.3.0.darwin-universal.tgz"
  sha256 "29d90561a247044afd097c335a62f39cbc7cf4eec6a57302cd75af7aae12e5f8"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
