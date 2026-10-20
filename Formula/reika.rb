class Reika < Formula
  desc "Coding agent CLI for local and hosted models"
  homepage "https://reikacode.com"
  url "https://registry.npmjs.org/@alexwkleung/reika/-/reika-0.5.0.tgz"
  sha256 "f01f40e5fe0eb2a3db46743412130011f577da78f26de47e79ea8a8fe11ad004"
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
