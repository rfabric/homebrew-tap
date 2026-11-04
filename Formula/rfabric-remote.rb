class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.9"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-remote_0.2.9_darwin_arm64.tar.gz"
      sha256 "74e37729a705ceaba87c703024ac9e3e818703f05b84ef983fbae1a6ae8121db"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-remote_0.2.9_darwin_amd64.tar.gz"
      sha256 "232d4e1d181e9f852f6b2aa4b7d5f487bcdf89e1b992bb3a45157ce6180adca5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-remote_0.2.9_linux_arm64.tar.gz"
      sha256 "a996988e467a8aecd601afdd2387dfeb6a4f9c492f718f3a7634b11e7a087d60"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-remote_0.2.9_linux_amd64.tar.gz"
      sha256 "11a1a8e9e37d5b1fbd6146bcaf59f029ba862f6d5ea16ef179eaa1fc5fd715cc"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
