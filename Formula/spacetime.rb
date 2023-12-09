class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.0"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.8.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "b0e794fd88682b37fee80cbbf86eb586155dcb2ab221aeac4c6dc7b993e5cfc1"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.8.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "e3039e34922ca53aad2feeb761863499b57e5055e7e3e6466d537d8fa886986c"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

