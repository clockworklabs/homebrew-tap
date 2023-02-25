class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0"
  url "http://install.spacetimedb.net/spacetime-homebrew.tar.gz"
  sha256 "f9771bf103d93474bb3bbb702045abeb6670c64d71124c05a5789098619d1c6d"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end
end
