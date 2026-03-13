class Neumann < Formula
  desc "Unified tensor database"
  homepage "https://github.com/Shadylukin/Neumann"
  version "0.4.0"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "775cebb30406c6d1569630534844e9ee388a50d19daf84dab0a31a1672ae4e60"
    end
    on_intel do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1f66b8c9daeb263b68bfcd482d46d5c7046f45aa24030ab1e750f3c92f46c8e2"
    end
  end

  on_linux do
    url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "511aafc8ea9cf4349080fd4908fc48debc3efed3213d36da1104266eb9327aac"
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
