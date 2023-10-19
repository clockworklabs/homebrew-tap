class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.7.1"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.1-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "df67f355be45ec256e4a627a0fbc9df1487c3df8d3fa49d3ca0ad1d6889ec7bf"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.1-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "92a726a36a371a95d8a008c220b3cec92f8f8ab14b5b599bcb4fa9f912c73947"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

