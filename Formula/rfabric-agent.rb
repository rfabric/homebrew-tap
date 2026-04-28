class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.16/rfabric-agent_0.1.16_darwin_arm64.tar.gz"
      sha256 "b28840238a7a58d61422c89ebd4d774a60cd2a3a477be5047729d1b50169d063"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.16/rfabric-agent_0.1.16_darwin_amd64.tar.gz"
      sha256 "088202203ad45111ba31bc9e37191c32c4add8bb121aebc83a3c9f3c61a6a029"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.16/rfabric-agent_0.1.16_linux_arm64.tar.gz"
      sha256 "6f01a25173cbbce4bf56167abb6ce51d295d79b1e229477a41dd80130973c13a"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.16/rfabric-agent_0.1.16_linux_amd64.tar.gz"
      sha256 "aff151293f7cad90235890110f08844787bdd95f8a20f494701d4b953979d2c2"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
