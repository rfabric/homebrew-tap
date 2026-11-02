class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.8"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-remote_0.2.8_darwin_arm64.tar.gz"
      sha256 "b82273db53700eec53504ac56ef851c63c57c910ed9b5aff8dfff0dee6565e95"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-remote_0.2.8_darwin_amd64.tar.gz"
      sha256 "2e559eda9c557cc09ad9ffafef79442f1d9ebe735983bc69499a765ad141578a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-remote_0.2.8_linux_arm64.tar.gz"
      sha256 "c66704c0b00b69d7bfd532e7a6bd9023cfae3f99de45f5f083054b83a5c5fdc3"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-remote_0.2.8_linux_amd64.tar.gz"
      sha256 "40a49bbf28ab1f75a7cbbf4ebe322ffa2203d3a7e0e1ddfe7b199fc8747d7561"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
