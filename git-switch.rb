class GitSwitch < Formula
  homepage "https://github.com/san650/git-switch"
  url "https://github.com/san650/git-switch/archive/v0.2.tar.gz"
  version "0.2"
  sha256 "5b7d7d77dc71f9b7211234c8dcf313111749ab22f7fed0943bbc61bade878f6d"

  def install
    bin.mkpath
    mv "git-switch.rb", "#{bin}/git-switch"
  end

  test do
    assert_equal "OK", "OK"
  end
end
