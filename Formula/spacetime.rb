class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix7/spacetime.darwin-arm64.tar.gz"
    sha256 "23adc671e53418a5cd73e3962832e75cb60647abd3d56230c12f594e78319444"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix7/spacetime.darwin-amd64.tar.gz"
    sha256 "bdc77fb264bb6b7bc997d2ca13cf85d2f1cd11bbee93305d84f9d177c3278cfa"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
