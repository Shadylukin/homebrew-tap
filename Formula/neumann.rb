class Neumann < Formula
  desc "Unified tensor database"
  homepage "https://github.com/Shadylukin/Neumann"
  version "0.4.0"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "abea188751375cad0dc124bcf3c9ebab5619d86c9de12d23c92fa429177cdccc"
    end
    on_intel do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "63da8ff9ff31f4d166c90e4e9c6e313e74b88e4c1f993a1828c9d65cc53db243"
    end
  end

  on_linux do
    url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ab3e0010d31b2b7275f94eaa640b7cd7ae04bbc01eceb7932aed95990ceb14d0"
  end

  def install
    bin.install "neumann"
    bash_completion.install       "completions/neumann.bash" => "neumann"
    zsh_completion.install "completions/_neumann"
    fish_completion.install "completions/neumann.fish"
    man1.install "man/neumann.1"
  end

  test do
    assert_match "neumann \#{version}",
      shell_output("\#{bin}/neumann --version")
  end
end
