class Helmwave < Formula
  desc "🌊 GitOps for Helm Charts"
  homepage "https://github.com/zhilyaev/helmwave"
  url "https://github.com/zhilyaev/helmwave/releases/download/0.5.0/helmwave-0.5.0-darwin-amd64.tar.gz"
  sha256 "8fd65abce5c8f34f4c95723d553fc8b4962787e7aa698fd94898443c2f32bc34"
  license "MIT"


  def install
    bin.install "helmwave"
  end

  test do
    system "helmwave", "-v"
  end
end
