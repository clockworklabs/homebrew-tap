class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.7.3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.3-beta-hotfix1/spacetime.darwin-arm64.tar.gz"
    sha256 "081b80d6dbe3f4f75df3d4f6d37ee5de152ce29b0d9eb5843057e49ae75cf9db"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.7.3-beta-hotfix1/spacetime.darwin-amd64.tar.gz"
    sha256 "4619d22c629d8466b881a7fa0e050818e5ffe6b81401a52e49c6882398a229ef" 
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

