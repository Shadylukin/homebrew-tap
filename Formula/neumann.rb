class Neumann < Formula
  desc "Unified tensor database"
  homepage "https://github.com/Shadylukin/Neumann"
  version "0.4.0"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1aaa559d0aa50a3889014fe22a99492eb7979575d3d35e0abf054653d7f9c83"
    end
    on_intel do
      url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "5767894df1dfa61cf9c310eab2320573f5653b34c52e8cfe4b28bbb2a722da4f"
    end
  end

  on_linux do
    url "https://github.com/Shadylukin/Neumann/releases/download/v0.4.0/neumann-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3b876e4c184fd642b7f1fa6da535b46ba8d2ebc6d0a35463de182becc8c37027"
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
