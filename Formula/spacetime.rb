class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "2a2069285b91b0589c6d281468232b7c6028dcf73eabcf905f9b6d83fee17e41"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.9.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "86d48bd56c1d9c8a8c826a5ffd6fa9a57408b7c258eb417e2cb6e50befe3b9d7"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

