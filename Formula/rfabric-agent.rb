class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-agent_0.2.7_darwin_arm64.tar.gz"
      sha256 "4b3cd8f89908c06cb06ff55a116ff9175b1beeb9f97538125ea8b08e6b93eed9"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-agent_0.2.7_darwin_amd64.tar.gz"
      sha256 "2e62e96328d1a52ff870efda381826ab4bfd62acd0c821422b7318cedd6aed01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-agent_0.2.7_linux_arm64.tar.gz"
      sha256 "909e846ba8654a37b51f5cad92555756ff98743340fd289a771ba434bb5ecc9a"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.7/rfabric-agent_0.2.7_linux_amd64.tar.gz"
      sha256 "ef01ee3d47309244ef11f67fece984e53817e02005605a04581530ad76aef8c9"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
