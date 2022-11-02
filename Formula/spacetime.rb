class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.3"
  url "http://install.spacetimedb.net/0.2.3/spacetime-0.2.3.darwin-universal.tgz"
  sha256 "4637af9801519333c06c084fb3c68b3d82a8eabfa6d766b14a66bf3316a99b10"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
