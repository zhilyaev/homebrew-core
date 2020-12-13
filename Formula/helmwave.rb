class Helmwave < Formula
  desc "🌊 GitOps for Helm Charts"
  homepage "https://github.com/zhilyaev/helmwave"
  url "https://github.com/zhilyaev/helmwave/archive/0.5.0.tar.gz"
  sha256 "97dd18b610b86ac81ed7bfd13eee3260ccfce8470854fac3ff31c839d7ecd459"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    cp_f "helmwave", "/usr/local/bin/helmwave"
  end

  test do
    system "helmwave"
  end
end
