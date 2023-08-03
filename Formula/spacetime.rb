class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.6.0"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-arm64.tar.gz"
    sha256 "5814527d828fd7c4340eef78068c48ead5f296b50e1fa431bf7d131d23b96d4d"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-amd64.tar.gz"
    sha256 "d205ff852d82b21a3b3cce711ebd963a9d4495dc8eca18563ab0654d5772103f"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
