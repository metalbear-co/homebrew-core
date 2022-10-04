class Mirrord < Formula
  desc "Connect your local process and your cloud environment"
  homepage "https://mirrord.dev"
  url "https://github.com/metalbear-co/mirrord/releases/download/2.13.0/mirrord_mac_universal.zip"
  sha256 "847f3eb90d46293f6f26f1e65eebdfb9712ea9b6e0be8438b72c8d7f20aa083b"
  license "MIT"
  head "https://github.com/metalbear-co/mirrord/releases/download/3.0.11-alpha/mirrord_mac_universal.zip"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "da42927bb7dbd5afe77d2834cb532664907090728f231f4bc5257e98bf4db6b3"
  end

  def install
    bin.install "mirrord"
  end

  test do
    system "mirrord", "--version"
  end
end
