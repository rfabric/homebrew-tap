class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.3"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-remote_0.2.3_darwin_arm64.tar.gz"
      sha256 "2b9174c5883500cfbc59ee72d702c003465a56d43f08315008e1b41033a34c45"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-remote_0.2.3_darwin_amd64.tar.gz"
      sha256 "58b793a1cdb8d6da6fceb60d9caf8a3f5b68394b2654ea536977354e7e4d8464"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-remote_0.2.3_linux_arm64.tar.gz"
      sha256 "ad5c49003f07ab66d5c9a9668335e0c85b3ce30c4868d6b15c554ad0a073d144"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-remote_0.2.3_linux_amd64.tar.gz"
      sha256 "ad54c5f450521d51588a01aef0bc3e85287809f17d9eb6543d5b8bac78dfa7d3"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
