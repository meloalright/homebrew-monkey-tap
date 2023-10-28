class MonkeyLang < Formula
  desc "monkey.rs in 2021 edition"
  homepage "https://github.com/meloalright/Monkey-Rust-2021-Edition"
  url "https://github.com/meloalright/Monkey-Rust-2021-Edition/archive/refs/tags/0.1.0-mklang.tar.gz"
  sha256 "a3ed5fe6df6473d4a78c757e22bf387681a690e940aff24830cae811427e1f0f"
  license "MIT"
  head "https://github.com/meloalright/Monkey-Rust-2021-Edition.git", branch: "main"

  bottle do
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "", shell_output("#{bin}/monkey-lang -v").strip
  end
end
