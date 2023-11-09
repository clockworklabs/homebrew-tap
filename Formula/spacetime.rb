class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.7.3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.3-beta-hotfix1/spacetime.darwin-arm64.tar.gz"
    sha256 "963222cdac49b357cc627ce4ec0edb5ac2eaa9ddc34ed4b2498e1d4d144aa86c"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.3-beta-hotfix1/spacetime.darwin-amd64.tar.gz"
    sha256 "ee051fc2fd947907d5244db155328afd7cb40407537d82e0a193b21e14ecf53b"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

