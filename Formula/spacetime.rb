class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.3.0"
  url "http://install.spacetimedb.net/0.3.0/spacetime-0.3.0.darwin-universal.tgz"
  sha256 "1ae12a0923631b5d8150e3215f04970a626a6726d24bd185af12e8c073f7228f"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
