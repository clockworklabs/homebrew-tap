class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.net"

  version "0.2.3"
  url "http://install.spacetimedb.net/0.2.3/spacetime-0.2.3.darwin-universal.tgz"
  sha256 "60e50a5c0075b9292f5286214f74ff961eeae54dbc6387ea443f0cc37f5796ee"

  def install
    bin.install "spacetime"
  end

  plist_options :manual => "spacetime help"

  test do
    system "#{bin}/spacetime version"
  end

end
