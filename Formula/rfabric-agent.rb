class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-agent_0.1.19_darwin_arm64.tar.gz"
      sha256 "c8afcf2d31212a935fb782d797241fa759d08d5a7a414c81a1764a66b4da1ce2"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-agent_0.1.19_darwin_amd64.tar.gz"
      sha256 "b464dbf250123fdd587f6fa90ab5acc244ef7aaa065ef17dec474492cd765c5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-agent_0.1.19_linux_arm64.tar.gz"
      sha256 "10d2daaf3aa64edc2afb21751d078cd3fafda71d36fe788034bc235675b348ef"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.19/rfabric-agent_0.1.19_linux_amd64.tar.gz"
      sha256 "91ecb5315140849b5d56ad25203751c228ac8376415df272badfa64f811ad1b7"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
