class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.2/rfabric-agent_0.1.2_darwin_arm64.tar.gz"
      sha256 "a5f7ff43f4a6ef0c851220ceebb44c8af379f6da9156d6d84d1977acdf14337a"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.2/rfabric-agent_0.1.2_darwin_amd64.tar.gz"
      sha256 "326afcbf685c5c0fd2656763bfe5e9e9703c4605287dd3bf993adb8f52ad334b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.2/rfabric-agent_0.1.2_linux_arm64.tar.gz"
      sha256 "2b361432d07d907a121d914f4dad57026d5b1ec2cbf5ffd28ce2c6dd61d8f069"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.2/rfabric-agent_0.1.2_linux_amd64.tar.gz"
      sha256 "d843d6705d2b3a3198aed48bd97310fcf318d1e07534a043908b7480cf361cc7"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
