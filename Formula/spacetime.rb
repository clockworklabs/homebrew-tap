class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.6.0"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-arm64.tar.gz"
    sha256 "40c553be7246d709a08ccf07a20e73db2503127853c256b3de9fff4a95062db2"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-amd64.tar.gz"
    sha256 "dfd424d500367a6c09a95c5f4fe172e7187897c69537621f07f2eb0e3ec59e31"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

