# Rendered by .github/workflows/release.yml from the released macOS tarballs.
# The @…@ placeholders are filled with the version, tag, repo, and per-arch sha256.
class Torg < Formula
  desc "Org-mode–flavored terminal text editor"
  homepage "https://github.com/systemhalted/torg"
  version "0.2.2"
  license "GPL-2.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/systemhalted/torg/releases/download/v0.2.2/torg-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "7826e6828d7fc404942a6d79acf3cbd6a8a29ecc3f398ef90b01518bfbd36f22"
    end
    on_intel do
      url "https://github.com/systemhalted/torg/releases/download/v0.2.2/torg-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "d90493388ae3d4080ef0da350b3c3bb4d786534259d66a34e5dd70e262e00488"
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
