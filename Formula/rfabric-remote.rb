class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.2"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-remote_0.2.2_darwin_arm64.tar.gz"
      sha256 "cd2a5fce3584f0d496e879c017424c90cd5f4a13200fdbf0eac06aeb038295d0"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-remote_0.2.2_darwin_amd64.tar.gz"
      sha256 "ef10100a2d0ce59858ec36894493f8738e347f12c1c1063fad904241679c5a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-remote_0.2.2_linux_arm64.tar.gz"
      sha256 "27323b06ec713faf4f3cbb63dc37555a515620bc2d248c81f36f4ec77e09e1fd"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-remote_0.2.2_linux_amd64.tar.gz"
      sha256 "3198db76b1e55cffcec6b8691ef2c19a9409d378224cc01249cb7f14200eb62a"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
