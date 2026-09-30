class Mackage < Formula
  include Language::Python::Shebang

  desc "Build macOS .pkg installers from a single JSON config via pkgbuild/productbuild"
  homepage "https://github.com/tactcomplabs/mackage"
  url "https://github.com/tactcomplabs/mackage/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "17bbbe9c4cd9c6ca4ab3c5a459ce931c2eef49d42bdd1a695a26e8fea507dbc8"
  license "Apache-2.0"
  head "https://github.com/tactcomplabs/mackage.git", branch: "main"

  # mackage wraps Apple's pkgbuild/productbuild, which only exist on macOS.
  depends_on :macos
  depends_on "python@3.13"

  def install
    # mackage is a single self-contained stdlib-only script; pin its shebang
    # to the Homebrew Python this formula depends on.
    rewrite_shebang detected_python_shebang, "mackage"
    bin.install "mackage"
  end

  test do
    assert_match "usage: mackage", shell_output("#{bin}/mackage --help")
  end
end
