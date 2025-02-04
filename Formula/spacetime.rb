class Spacetime < Formula

  desc "A command line interface for SpacetimeDB"
  homepage "https://spacetimedb.com"

  version "1.0.0-rc3"

  if Hardware::CPU.arm?
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix6/spacetime.darwin-arm64.tar.gz"
    sha256 "c6756c54bf0df99fa14f7f93f1fd627929a97e679f1ee235fc8f079b80379b16"
  else
    url "https://github.com/clockworklabs/SpacetimeDB/releases/download/v1.0.0-rc3-hotfix6/spacetime.darwin-amd64.tar.gz"
    sha256 "98c21f8b937cc3359f714ec3fc251d463aa3f9a7bee97b00566a3affb37679a3"
  end


  def install
    bin.install "spacetime"
  end

  test do
    system "#{bin}/spacetime version"
  end
end
