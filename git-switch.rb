class GitSwitch < Formula
  homepage "https://github.com/san650/git-switch"
  url "https://github.com/san650/git-switch/archive/v0.3.tar.gz"
  version "0.3"
  sha256 "c47a39ac7165276deb86d1bedda4dc29d4b08e11419566b379066fd670e91f04"

  def install
    bin.mkpath
    mv "git-switch.rb", "#{bin}/git-switch"
  end

  test do
    assert_equal "OK", "OK"
  end
end
