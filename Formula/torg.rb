# Rendered by .github/workflows/release.yml from the released macOS tarballs.
# The @…@ placeholders are filled with the version, tag, repo, and per-arch sha256.
class Torg < Formula
  desc "Org-mode–flavored terminal text editor"
  homepage "https://github.com/systemhalted/torg"
  version "0.2.1"
  license "GPL-2.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/systemhalted/torg/releases/download/v0.2.1/torg-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "382e0781af51f0e016b8207144f40ee62f27b44fef9ac46747a76ac39e1695cf"
    end
    on_intel do
      url "https://github.com/systemhalted/torg/releases/download/v0.2.1/torg-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "7acf8030f7631b86bc63794ca2ef24402834de6883b23943913e8a1924dc3621"
    end
  end

  def install
    bin.install "torg"
  end

  test do
    # torg is a full-screen TUI, so we only assert the binary landed on PATH
    # rather than launching it (which would need a terminal).
    assert_predicate bin/"torg", :exist?
  end
end
