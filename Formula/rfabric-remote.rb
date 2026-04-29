class RfabricRemote < Formula
  desc "rFabric remote — robot agent with LiveKit video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.1.20"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-remote_0.1.20_darwin_arm64.tar.gz"
      sha256 "e7986a7a8aa60ae90bdab94ef6f5b1b9b7d608089b8c9a3ad635fbc920b49286"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-remote_0.1.20_darwin_amd64.tar.gz"
      sha256 "3f4d771b6212a7be41261243346e3997b16a5cfa16fce787765b6cc44f807ec1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-remote_0.1.20_linux_arm64.tar.gz"
      sha256 "538f5cc4ba2c8806c198dae411dfe04edaf731a410b44151424ba446aff99b1d"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-remote_0.1.20_linux_amd64.tar.gz"
      sha256 "b55e34e285525f740785b098d9262fad646649312faf1c739310d8175d00f036"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
