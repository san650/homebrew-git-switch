class GitSwitch < Formula
  homepage "https://github.com/san650/git-switch"
  url "https://github.com/san650/git-switch/archive/v0.4.tar.gz"
  version "0.4"
  # FIXME Need to update sha sum
  sha256 "7a600511edfd7c17bdd11f4973b2fc6199c414e2d46a859ac8479504cb1f4ca0"

  def install
    bin.mkpath

    mv "git-switch.rb", "git-switch"
    mv "git-switch.man", "git-switch.1"

    bin.install "git-switch"
    man1.install "git-switch.1"
    bash_completion.install "git-switch-completion.bash"
  end

  test do
    assert_equal "git-switch version 0.4", `#{bin}/git-switch --version`.strip
  end
end
