class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.10.1"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.10.1-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "f0cfaed5860840c339b043feeb4d6023640c7197b0a55a67e6d2c8e20965ddd9"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.10.1-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "51cb3ccf2444f8f025ff76f384358dd0a28844e371d6a0c27575ec190c0e2752"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

