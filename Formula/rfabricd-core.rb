class RfabricdCore < Formula
  desc "Bridges a robot to the rFabric platform; minimal build without interactive media"
  homepage "https://rfabric.io"
  version "0.2.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd-core_0.2.11_darwin_arm64.tar.gz"
      sha256 "6f2c74b7d6c9c0f46ef8913a23d3f7721fdbe0b7ace8a3983714e87b187ae236"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd-core_0.2.11_darwin_amd64.tar.gz"
      sha256 "bed9ac7e227f1271e1d60d38dc84545465981e45b80613fd0573d8213af51e4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd-core_0.2.11_linux_arm64.tar.gz"
      sha256 "13c75f25bec06b7c2f0a2701e149a2aeb3e4a3cb27d394ca6b09bc4a7f29ac45"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd-core_0.2.11_linux_amd64.tar.gz"
      sha256 "637741d1b2d0f896d29d235317c9d9df07fee6e9cafae8912166abbde1f7d905"
    end
  end

  def install
    bin.install "rfabricd-core"
  end

  test do
    system "#{bin}/rfabricd-core", "version"
  end
end
