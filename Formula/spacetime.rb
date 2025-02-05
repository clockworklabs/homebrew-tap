class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix7/spacetime.darwin-arm64.tar.gz"
    sha256 "ba07bd8e15c8ea7b8c64e863c32e1ba93aaca0ea48486047b4e749d4b49e96c6"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix7/spacetime.darwin-amd64.tar.gz"
    sha256 "540ee00b67f34127bea709818cd2a6374dfbcba40fd551e4c45175a54ba3bc64"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
