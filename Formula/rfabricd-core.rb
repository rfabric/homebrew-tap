class RfabricdCore < Formula
  desc "Bridges a robot to the rFabric platform; minimal build without interactive media"
  homepage "https://rfabric.io"
  version "0.2.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd-core_0.2.13_darwin_arm64.tar.gz"
      sha256 "afa94e3ec555cd66049c5a68effe622c604811c7afad26c824bc4d2a31f8aa1f"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd-core_0.2.13_darwin_amd64.tar.gz"
      sha256 "d6f9f099316c3a78686f402afab9488d1e4faf0887d3282f24c2f7bdaee3f75d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd-core_0.2.13_linux_arm64.tar.gz"
      sha256 "05ece0338082fe7896728597c75e050ca11ce6135e7c0387238755b185d70ee7"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd-core_0.2.13_linux_amd64.tar.gz"
      sha256 "efbf8c44495838264835f3248af80762c1b9a6cd122460ce53280ee1af4acac4"
    end
  end

  def install
    bin.install "rfabricd-core"
  end

  test do
    system "#{bin}/rfabricd-core", "version"
  end
end
