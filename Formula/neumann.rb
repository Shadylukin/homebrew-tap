class Neumann < Formula
  desc "Unified tensor database"
  homepage "https://github.com/Shadylukin/Neumann"
  version "0.4.0"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a48e893edd698f78871985440c31aa276543b07e39c02c60a0c5f690f19f939e"
    end
    on_intel do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c18a14345561429960527e33b24b76d8bea4ae72c2dd6fe62d9999dc4c82bb81"
    end
  end

  on_linux do
    url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e6ede1529d96a1c9777887523253c5f17af39e32e5a3011944270d330e8b0463"
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
