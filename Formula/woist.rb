class Woist < Formula
  desc "CLI tool to analyze IPs, domains and URLs"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v4.1.0.tar.gz"
  sha256 "102e2d9d86d3528d75f5b41c169f68d86f72aad1fef594a5c2021f6a0a258a1f"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "woist"
  end

  test do
    system "#{bin}/woist", "--help"
  end
end
