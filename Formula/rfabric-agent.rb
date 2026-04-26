class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.6/rfabric-agent_0.1.6_darwin_arm64.tar.gz"
      sha256 "dff293503f3440ada49832ccc1291cff50261d49f31a478bfe98f24fb0154c47"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.6/rfabric-agent_0.1.6_darwin_amd64.tar.gz"
      sha256 "4db36adaa01ff4d6f8171d12dd1bbb0632e5d25773086e06bf9b76506b248dbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.6/rfabric-agent_0.1.6_linux_arm64.tar.gz"
      sha256 "b2cec0480011fa05a5217c186ea03addd2c87de92f0b06df242a236b1d340dca"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.6/rfabric-agent_0.1.6_linux_amd64.tar.gz"
      sha256 "0b768a70768db606498b7637f5ee4160f28c1ab10dc3dea36b463b2af98269f4"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
