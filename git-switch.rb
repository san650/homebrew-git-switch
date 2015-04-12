class GitSwitch < Formula
  homepage "https://github.com/san650/git-switch"
  url "https://github.com/san650/git-switch/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "f1a1a3272f68799ca902ac8f3fb5454914503cd925c9731d4b4fbb1f61a52c6b"

  def install
    bin.mkpath

    mv "git-switch.rb", "git-switch"
    mv "git-switch.man", "git-switch.1"

    bin.install "git-switch"
    man1.install "git-switch.1"
    bash_completion.install "git-switch-completion.bash"
  end

  test do
    assert_equal "git-switch version 1.0.0", `#{bin}/git-switch --version`.strip
  end
end
