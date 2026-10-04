class Reika < Formula
  desc "Coding agent CLI for local and hosted models"
  homepage "https://reikacode.com"
  url "https://registry.npmjs.org/reika/-/reika-0.1.0.tgz"
  sha256 "REPLACE_WITH_RELEASE_CHECK_SHA256"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/reika --version").strip
    assert_match "usage: reika", shell_output("#{bin}/reika --help")
  end
end
