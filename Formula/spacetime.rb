class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.10.1"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.11.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "e626102545433d1f7ef589706308294a56f1c35abb08e29c813a31d1a4e7230b"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.11.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "5a494a5c8a24dad18aa8dc69d8b607b3af08b1f2dbc9456d73c19efd80ab994d"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

