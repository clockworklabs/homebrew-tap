class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.6.0"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-arm64.tar.gz"
    sha256 "64534d142f6618c7bb6be9a0b19f7b7185069cb842afa0df086d1e2fcf7e7f29"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-amd64.tar.gz"
    sha256 "38225c989219569a9d162625932184f7d7b3f902a84bda99628b8dba796228e4"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
