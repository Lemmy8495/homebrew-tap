class Woist < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to analyze IP addresses, domains and URLs"
  homepage "https://github.com/Lemmy8495/woist"
  url "https://github.com/Lemmy8495/woist/archive/refs/tags/v6.0.1.tar.gz"
  sha256 "8606fbe589d16731c18bb8ba2b5482d3d11cebb57311dddf218efe6c2fa1dde8"
  license "MIT"

  depends_on "python"

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/source/d/dnspython/dnspython-2.8.0.tar.gz"
    sha256 "181d3c6996452cb1189c4046c61599b84a5a86e099562ffde77d26984ff26d0f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/woist --version").strip
    output = shell_output("#{bin}/woist --ports 80 2>&1", 1)
    assert_match "Keine Ziele angegeben.", output
  end
end
