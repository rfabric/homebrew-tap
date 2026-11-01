class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.4"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-remote_0.2.4_darwin_arm64.tar.gz"
      sha256 "42620c9005db88d8aa221dcfff06068159c48e410702a161d4d30f7a9084de38"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-remote_0.2.4_darwin_amd64.tar.gz"
      sha256 "2bf18084d74e63a802061af46766c34cdffe48f880554d885302f2f9ec2f40bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-remote_0.2.4_linux_arm64.tar.gz"
      sha256 "ee426ec4e4dee5b90c6ec93a83fccaa13918f6c469fbc06be982af4e20412cf7"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-remote_0.2.4_linux_amd64.tar.gz"
      sha256 "2a249725ee147d24150a7c288cb59bda36ff093598eea240c7cc56f261915b55"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
