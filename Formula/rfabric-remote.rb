class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.7"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-remote_0.2.7_darwin_arm64.tar.gz"
      sha256 "df58354eee07a3fbf5153f8815aee728e4ed1eaea01b6aee6af77c754fcaf3dc"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-remote_0.2.7_darwin_amd64.tar.gz"
      sha256 "debcfdefe55d937e8e5a75d3563b6eddc15372be48199bd1526b18c94f1c7197"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-remote_0.2.7_linux_arm64.tar.gz"
      sha256 "17b4657cdf76aca2d2f70f69a918f50ef5ac769e6671d5896db5037406bb48db"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-remote_0.2.7_linux_amd64.tar.gz"
      sha256 "97d3f023e6736f93dae0657d698a383cad6aeaf50f2752db7ed5cbe0df8748f8"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
