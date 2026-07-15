# Rendered by .github/workflows/release.yml from the released macOS tarballs.
# The @…@ placeholders are filled with the version, tag, repo, and per-arch sha256.
class Torg < Formula
  desc "Org-mode–flavored terminal text editor"
  homepage "https://github.com/systemhalted/torg"
  version "0.2.3"
  license "GPL-2.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/systemhalted/torg/releases/download/v0.2.3/torg-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "76cb13bb49d50b1a01ff8a838d6e722b11bcdb66a60ac355ecc0534305ad8398"
    end
    on_intel do
      url "https://github.com/systemhalted/torg/releases/download/v0.2.3/torg-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "f663b132cb2a814c66aecfa53d91d267a943e9f365c2d918474b3e9dc5f52349"
    end
  end

  def install
    bin.install "torg"
    man1.install "torg.1"
  end

  test do
    # torg is a full-screen TUI, so we only assert the binary landed on PATH
    # rather than launching it (which would need a terminal).
    assert_predicate bin/"torg", :exist?
  end
end
