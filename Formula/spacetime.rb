class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "0.8.1"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.8.1-beta/spacetime.darwin-arm64.tar.gz"
    sha256 "0fd3f615e15a8ebf8293cad5d936cf82b8d84809cc61b9be044ecdf2605e57ec"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v0.8.1-beta/spacetime.darwin-amd64.tar.gz"
    sha256 "87e185c91040b6ee942049637ddb2a86f64b9374647f685cbb2f0d661845777f"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end

