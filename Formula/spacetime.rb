class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc2-hotfix1/spacetime.darwin-arm64.tar.gz"
    sha256 "cb3c99435177a897b4a987528ce276440ae94781534d88555401bc45f0060a3b"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc2-hotfix1/spacetime.darwin-amd64.tar.gz"
    sha256 "f69c6fce4a75f32b2374ff15b32f35b33773bc910c1ec0186dede0a40b731ee1"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
