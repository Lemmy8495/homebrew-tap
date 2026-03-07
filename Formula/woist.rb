class Woist < Formula
  desc "Show the geographic location of an IP address or URL"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/4.0.0.tar.gz"
  sha256 "6970bf4b5a1625ed45a2228649c5a0c38d5e0cc5b34cc18257095dd7ec91d25a"
  license "MIT"

  def install
    bin.install "woist"
  end

  test do
    system "#{bin}/woist", "8.8.8.8"
  end
end
