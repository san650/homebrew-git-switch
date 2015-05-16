class GitSwitch < Formula
  homepage "https://github.com/san650/git-switch"
  url "https://github.com/san650/git-switch/archive/v1.1.1.tar.gz"
  version "1.1.1"
  sha256 "9c8625ef4f7a30598312a584c924d0a8d477d7eee951a82a10a55d7a7d7fceec"

  def install
    bin.mkpath

    mv "git-switch.rb", "git-switch"
    mv "git-switch.man", "git-switch.1"

    bin.install "git-switch"
    man1.install "git-switch.1"
    bash_completion.install "git-switch-completion.bash"
    zsh_completion.install "git-switch-completion.zsh"
  end

  test do
    assert_equal "git-switch version 1.1.1", `#{bin}/git-switch --version`.strip
  end
end
