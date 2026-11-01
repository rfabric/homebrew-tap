class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-agent_0.2.3_darwin_arm64.tar.gz"
      sha256 "be41a405d2996c116c72e707b6705128fd4ceefc35414426051c25a2046c02bb"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-agent_0.2.3_darwin_amd64.tar.gz"
      sha256 "10fcc1f7efaede08053557e3e29e4564cccabab0a0291d21cfb87da1e3d92c11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-agent_0.2.3_linux_arm64.tar.gz"
      sha256 "2b4bdeef395aba37cd801928ded2bea58af2f9659888bf2034e7aeb3eb75c546"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.3/rfabric-agent_0.2.3_linux_amd64.tar.gz"
      sha256 "6ae4768a27e0faadac209021d831b8fc9afd2f24a98070d21e8e1210f0c23590"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
