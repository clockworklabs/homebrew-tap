class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.12.0"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.12.0-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "d7949c92c9ba9ccfe2254a3a95ceed07655ec24d852b32e1ca4b3e94e08fa29d"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.12.0-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "33395666ce1cda47537558e02572fbb46dc8bbfbd2d2f7aef6c1d365a6c63ca0"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
