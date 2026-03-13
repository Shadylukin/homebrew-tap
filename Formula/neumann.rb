class Neumann < Formula
  desc "Unified tensor database"
  homepage "https://github.com/Shadylukin/Neumann"
  version "0.4.0"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "51d2d703592b7c01b2d1ac86c03b5dded172879b44e17f18f3cd32bf63da3069"
    end
    on_intel do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "2ee409bdcae9824a548da16ceb896357c7cb05c1df7a478b0fb5ebfaa239ca4d"
    end
  end

  on_linux do
    url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "56544d7e89aa525d41704ca34bda0202a618b9c09b43bdc7247010f618b33d18"
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
