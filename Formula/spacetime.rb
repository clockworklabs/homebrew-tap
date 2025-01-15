class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix1/spacetime.darwin-arm64.tar.gz"
    sha256 "230740fee768fcc62aa0882d705b107a8715ebcbb7c3c125310919c8e7e2169f"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix1/spacetime.darwin-amd64.tar.gz"
    sha256 "230740fee768fcc62aa0882d705b107a8715ebcbb7c3c125310919c8e7e2169f"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
