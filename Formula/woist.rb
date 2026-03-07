class Woist < Formula
  desc "Show the geographic location of an IP address or URL"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "0c90dce765842c6c953aa19b09414bd16be339606a32a921b0910bf59554060c"
  license "MIT"

  def install
    bin.install "woist"
  end

  test do
    system "#{bin}/woist", "8.8.8.8"
  end
end
