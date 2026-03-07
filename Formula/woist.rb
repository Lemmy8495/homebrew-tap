class Woist < Formula
  desc "CLI tool to analyze IP addresses, domains and URLs"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v5.0.0.tar.gz"
  sha256 "b82ed61f9b9e902123495be3db519bdeed1e73dad7a262fc443b1c24fa354941"
  license "MIT"

  depends_on "python"

  def install
    bin.install "woist"
  end
end