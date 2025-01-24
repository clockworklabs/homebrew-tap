class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix4/spacetime.darwin-arm64.tar.gz"
    sha256 "dc6f632e80fdd812bf6cbeb332a520fd4336c9afdf25e08c526c4dc71a6be987"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix4/spacetime.darwin-amd64.tar.gz"
    sha256 "3fea894e2d265318e07eda609626d571a559cee943e2eda89e0cc4775c95881a"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
