class Woist < Formula
  desc "Show the geographic location of an IP address or URL"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "55be5f4a98769b5eac8e1be4a91df0eb5fb1db3931f32210727795e6ac273be2"
  license "MIT"

  def install
    bin.install "woist"
  end

  test do
    system "#{bin}/woist", "8.8.8.8"
  end
end
