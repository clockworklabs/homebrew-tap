class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.6.1"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-arm64.tar.gz"
    sha256 "40c553be7246d709a08ccf07a20e73db2503127853c256b3de9fff4a95062db2"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-amd64.tar.gz"
    sha256 "f6a1a3cc8254ca41a50f08bc99ed131b9d07a889b3293fa57f2e48b8987201e9"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

