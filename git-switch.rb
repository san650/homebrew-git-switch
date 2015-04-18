class GitSwitch < Formula
  homepage "https://github.com/san650/git-switch"
  url "https://github.com/san650/git-switch/archive/v1.1.0.tar.gz"
  version "1.1.0"
  #sha256 "f1a1a3272f68799ca902ac8f3fb5454914503cd925c9731d4b4fbb1f61a52c6b"

  head "https://github.com/san650/git-switch.git"

  def install
    # no need to do anything
  end

  test do
    assert_equal "git-switch version 1.1.0", `#{bin}/git-switch --version`.strip
  end
end
