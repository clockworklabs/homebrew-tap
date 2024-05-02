class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "2a2069285b91b0589c6d281468232b7c6028dcf73eabcf905f9b6d83fee17e41"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "a51513b5f0f967755881c87de8e085a6ae059760cf04981bcb089961d2ee0cd5"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

