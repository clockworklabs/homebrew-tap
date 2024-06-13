class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.10.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "572edb01f4617af4b63b5ae54ea08e3b6da21fccd4980588d7324e1cfbc835e3"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.10.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "827cc7695a16debd955db6dcb5767babb3eda4a57691c21b7f0e2d378ddf6b05"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

