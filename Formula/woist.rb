class Woist < Formula
  desc "CLI tool to analyze IP addresses, domains and URLs"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v6.0.1.tar.gz"
  sha256 "8606fbe589d16731c18bb8ba2b5482d3d11cebb57311dddf218efe6c2fa1dde8"
  license "MIT"

  depends_on "python"

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/ba/5a/18ad964b0086c6e62e2e7500f7edc89e3faa45033c71c1893d34eed2b2de/dnspython-2.8.0-py3-none-any.whl"
    sha256 "01d9bbc4a2d76bf0db7c1f729812ded6d912bd318d3b1cf81d30c0f845dbf3af"
  end

  def install
    python = "python3"
    xy = Language::Python.major_minor_version python
    site_packages = libexec/"lib/python#{xy}/site-packages"
    ENV.prepend_create_path "PYTHONPATH", site_packages

    system python, "-m", "pip", "install", "--no-deps", "--prefix=#{libexec}", resource("dnspython").cached_download

    libexec.install "woist"
    (bin/"woist").write_env_script libexec/"woist", PYTHONPATH: ENV.fetch("PYTHONPATH")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/woist --version").strip
    output = shell_output("#{bin}/woist --ports 80 2>&1", 1)
    assert_match "Keine Ziele angegeben.", output
  end
end
