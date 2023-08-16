class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.6.1"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-arm64.tar.gz"
    sha256 "40c553be7246d709a08ccf07a20e73db2503127853c256b3de9fff4a95062db2"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/latest/download/spacetime.darwin-amd64.tar.gz"
    sha256 "b92d0303fae98ad582adb4e45a3eb6689f440de03c3fea97e461fba659a6edf4"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

