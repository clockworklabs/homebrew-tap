class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.3.1"
  url "http://install.spacetimedb.net/0.3.1/spacetime-0.3.1.darwin-universal.tgz"
  sha256 "89c4d0e3795d672e1cbdfe9050f6cf650170a791917d151df857cae1b70fbce9"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
