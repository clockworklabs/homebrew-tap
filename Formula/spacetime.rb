class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3/spacetime.darwin-arm64.tar.gz"
    sha256 "b5d311931a39b60cb86282d7983d9ea7596ed461baa9713e53d0826f8200f763"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3/spacetime.darwin-amd64.tar.gz"
    sha256 "da7045dc4243aa786512c424452ea796e36d0146d398ce6d68237247ab3e96eb"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
