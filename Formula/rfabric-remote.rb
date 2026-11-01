class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.1"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-remote_0.2.1_darwin_arm64.tar.gz"
      sha256 "95d5f50e7589afb4a0ef1d3ec9e60fd56cb056278ab1dd55548efe0a1dba9cfa"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-remote_0.2.1_darwin_amd64.tar.gz"
      sha256 "815be61949e74024464a11e6c487b76066dd8afb9057cf80019ef4671d07853a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-remote_0.2.1_linux_arm64.tar.gz"
      sha256 "ac4ea2ebb5131a53dd3018c89213172aed2b823b83ea1d27485b20b56cd3cc3b"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-remote_0.2.1_linux_amd64.tar.gz"
      sha256 "17011096f0a727a8c46888a3139c169e3062c6b90571f25fd807449e4d746784"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
