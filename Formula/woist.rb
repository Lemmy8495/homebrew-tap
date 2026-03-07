class Woist < Formula
  desc "CLI tool to analyze IP addresses, domains and URLs"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v6.0.0.tar.gz"
  sha256 "decaab9e421a05da69a9cbf047ee82f4ddd529573ce9f67a30d32fdf2d120789"
  license "MIT"

  depends_on "python"

  def install
    bin.install "woist"
  end

  test do
    system "#{bin}/woist", "--version"
  end
end