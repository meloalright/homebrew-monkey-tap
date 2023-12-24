class MonkeyLang < Formula
  desc "monkey.rs in 2021 edition"
  homepage "https://github.com/meloalright/Monkey-Rust-2021-Edition"
  url "https://github.com/meloalright/Monkey-Rust-2021-Edition/archive/refs/tags/0.2.0-mklang.tar.gz"
  sha256 "ef7174f4f785c241ba0a448c43174333b0a3b47c3497b49668784e2c128eb00a"
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
