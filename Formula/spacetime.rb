class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.4"
  url "http://install.spacetimedb.net/0.2.4/spacetime-0.2.4.darwin-universal.tgz"
  sha256 "c95e104fe8e6dec4d4e55f6a7198a869e7ee9688b8fc97aaeca8a9775881389e"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
