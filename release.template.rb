class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "{RELEASE}"
  url "https://download.spacetimedb.net/{VERSION}/spacetime-{VERSION}.darwin-universal.tgz"
  sha256 "{VERHASH}"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
