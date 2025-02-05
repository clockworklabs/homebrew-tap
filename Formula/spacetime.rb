class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix7/spacetime.darwin-arm64.tar.gz"
    sha256 "31cad600ab26b75923f730a6ebd90ec81e8dc76ddf4018e9da9798e3d7c43059"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix7/spacetime.darwin-amd64.tar.gz"
    sha256 "81acfa46355f47a60b3c1bc52e3169f49d535c6b3e8904b3e17c9bcee691a83f"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
