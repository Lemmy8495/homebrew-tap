class Woist < Formula
  desc "Show the geographic location of an IP address or URL"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "616f09e310a7df9b26b2b24e097cf1a3cd3ce2b4510e23427277bf9e7c2ca4f4"
  license "MIT"

  def install
    bin.install "woist"
  end

  test do
    system "#{bin}/woist", "8.8.8.8"
  end
end
