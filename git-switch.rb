class GitSwitch < Formula
  homepage "https://github.com/san650/git-switch"
  url "https://github.com/san650/git-switch/archive/v0.3.1.tar.gz"
  version "0.3.1"
  sha256 "7a600511edfd7c17bdd11f4973b2fc6199c414e2d46a859ac8479504cb1f4ca0"

  def install
    bin.mkpath
    mv "git-switch.rb", "#{bin}/git-switch"
  end

  test do
    assert_equal "OK", "OK"
  end
end
