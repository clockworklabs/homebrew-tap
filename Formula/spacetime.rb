class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix2/spacetime.darwin-arm64.tar.gz"
    sha256 "38f54aff4ef5f5bb80efa57fea85eeedb5ecf69f78750f041b6193d994daca46"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix2/spacetime.darwin-amd64.tar.gz"
    sha256 "0ab4d7e18cf6a365f5af1d82b247f54af393de9c89f29825a5a6668fe4bddc2b"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
