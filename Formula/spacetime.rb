class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc2"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc2-hotfix2/spacetime.darwin-arm64.tar.gz"
    sha256 "4cddd78a92a98cdd4f2870779f271f8204424d8b788f76248d4dc626d5e5b86a"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc2-hotfix2/spacetime.darwin-amd64.tar.gz"
    sha256 "56bf7f3d381663dc674b2b45d0fc3309c63e7f038b97f1f36c09430a28cc8c9b"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
