class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.8.2-beta-hotfix7/spacetime.darwin-arm64.tar.gz"
    sha256 "e11bf2994b626a3e1d6b787cc5ec546c0be092ff20ffa217f9eca64a7133327c"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.8.2-beta-hotfix7/spacetime.darwin-amd64.tar.gz"
    sha256 "bec107e9b0db4447cbd6dcef2b7da1085f21ad6df5fb2a8dc0cd9ee5d1c0c07f"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

