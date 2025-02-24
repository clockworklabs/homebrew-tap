class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0"

  # url "https://github.com/clockworklabs/SpacetimeDB/archive/refs/tags/#{version}.tar.gz"
  url "https://github.com/clockworklabs/SpacetimeDB/archive/92c8e95a19fec5069fb5581b0a3c36f2f14a7f16.tar.gz"
  sha256 "d3dba33d5d1906a6c932084a0674edc9fdb3a3f9ab094be31a40ecd38d55d967"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(root: ".", path: "crates/update")
    system "mv", "bin/spacetimedb-update", "bin/spacetime"
    bin.install "bin/spacetime"
  end

  def post_install
    system "#{bin}/spacetime version upgrade"
  end

  test do
    system "#{bin}/spacetime --version"
  end
end
