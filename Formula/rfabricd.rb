class Rfabricd < Formula
  desc "Bridges a robot to the rFabric platform, with interactive media and teleoperation"
  homepage "https://rfabric.io"
  version "0.2.11"
  license "Apache-2.0"
  depends_on "gstreamer"
  on_macos do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd_0.2.11_darwin_arm64.tar.gz"
      sha256 "66ba7f2c971937bc6d55d7ba944a4c52a4ce82ee381e97658290b4612df2b1f6"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd_0.2.11_darwin_amd64.tar.gz"
      sha256 "5b71156ef215ad2d19ab8f2dcf2faf46fead346f74f34f5e8cb2a1ec1a808981"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd_0.2.11_linux_arm64.tar.gz"
      sha256 "70d2ece99d703f0295510e08b76e649cafdc9209f28a70f526e3e47a0a755a4d"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.11/rfabricd_0.2.11_linux_amd64.tar.gz"
      sha256 "fa9bfa7efa72c65d25aba6376daa1182eef36c6ff1081d7f926c54909bbf55d3"
    end
  end

  def install
    bin.install "rfabricd"
  end

  test do
    system "#{bin}/rfabricd", "version"
  end
end
