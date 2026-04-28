class RfabricRemote < Formula
  desc "rFabric remote — robot agent with LiveKit video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.1.19"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-remote_0.1.19_darwin_arm64.tar.gz"
      sha256 "8c1e33b27cad3e9f3e6756355f6aedaa964ef7f16e26695afea2a1e4d0d6dadd"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-remote_0.1.19_darwin_amd64.tar.gz"
      sha256 "e63882f9ad4ddc83a3f9ee20eec0b770f13752693fa87d9ba6a1ada290f6f94e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-remote_0.1.19_linux_arm64.tar.gz"
      sha256 "8fd112a23ea40d67561ebc847b142a046f2c68849062edb60a4f562c84c09535"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-remote_0.1.19_linux_amd64.tar.gz"
      sha256 "042ce129daaf8a6ff541d26b85fc18bfdbb8d64758f5df2eb61f1aef16711ec5"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
