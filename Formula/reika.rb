class Reika < Formula
  desc "Coding agent CLI for local and hosted models"
  homepage "https://reikacode.com"
  url "https://registry.npmjs.org/@alexwkleung/reika/-/reika-0.9.0.tgz"
  sha256 "55be5676e1835c3a645b14e29280e862799b3523ed4d299593df2b8aec8edefc"
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
