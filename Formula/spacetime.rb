class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.1-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "05f7cdc649d8a872d1279c451edc7d9268d7cd0a72d72ffd691c0b776f3a09dc"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.1-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "5a99f52fc87831ac99da8ad5afe2a0250477ad31b33efce491797294e19fb644"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

