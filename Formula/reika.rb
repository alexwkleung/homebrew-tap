class Reika < Formula
  desc "Coding agent CLI for local and hosted models"
  homepage "https://reikacode.com"
  url "https://registry.npmjs.org/@alexwkleung/reika/-/reika-0.1.2.tgz"
  sha256 "522c3c341aa95070234ed441e4f0ec1934a478eed6d7b07cf42b1a4cf199a1ca"
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
