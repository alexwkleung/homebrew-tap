class Reika < Formula
  desc "Coding agent CLI for local and hosted models"
  homepage "https://reikacode.com"
  url "https://registry.npmjs.org/@alexwkleung/reika/-/reika-0.12.0.tgz"
  sha256 "fec97e433e1b6a8ce8529f4a45b62286a462044f6722a1d99152024559218801"
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
