class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.2-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "d4e4d58181d4de65652f4a48adc4220d97ea27b5be15eef21fb7423069c91917"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.2-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "2251be77451ec845241cd95f35e9b86e0b2805673127d0468c86fc027842b610"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

