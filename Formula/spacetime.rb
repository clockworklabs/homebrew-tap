class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.3"
  url "http://install.spacetimedb.net/0.2.3/spacetime-0.2.3.darwin-universal.tgz"
  sha256 "57a6256e5a0f536bdd6d9f14543b8e11a30b4cc7939bcc0d3eb0707ccd01fbdd"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
