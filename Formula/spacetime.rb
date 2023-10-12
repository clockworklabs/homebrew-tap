class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.7.0"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "2e4d37bb4cfc8a7b5d2e1046a6cebde9718a7cd784138f4710b5e285dd8c11d8"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "8d6f4346ed6d2aeca750952b7437174b92c55d1d06ca00b2c36d11e6586515ec"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

