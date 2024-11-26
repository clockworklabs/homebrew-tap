class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc1"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc1-hotfix1/spacetime.darwin-arm64.tar.gz"
    sha256 "cc48042d0862b0261230d12caa03d6dff22ff3662157a8998ee6b936fde1ada8"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc1-hotfix1/spacetime.darwin-amd64.tar.gz"
    sha256 "d038181909ec178fa49e912a0059138a87708b2d578a21c9736613e40d0d6023"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
