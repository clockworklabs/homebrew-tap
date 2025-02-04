class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix5/spacetime.darwin-arm64.tar.gz"
    sha256 "8d0677b74140fdd6f34e6dac064f2df617156964d6e063f2636ea6103dba0e7a"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix5/spacetime.darwin-amd64.tar.gz"
    sha256 "400c9ea775ebc8be765eddd67eb74e319862933ff96d52539821c2ea0681b202"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
