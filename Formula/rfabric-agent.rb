class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-agent_0.1.20_darwin_arm64.tar.gz"
      sha256 "6ac8506fa49303f22144cd5b3edd67833fd7c7aa9ab1bc7f35115e1a4eae2400"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-agent_0.1.20_darwin_amd64.tar.gz"
      sha256 "f63db42a237aa3e10627c14d4058481b98c725595ad024764120d860a5d0fb82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-agent_0.1.20_linux_arm64.tar.gz"
      sha256 "867783214284e1542257827afcbfad32d1bdac4aeba742ffbb9757ae95ac0161"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.20/rfabric-agent_0.1.20_linux_amd64.tar.gz"
      sha256 "f9b0a1bbdcbf8decd00ccc54978ff4b798045d6dc5cc96b85f003dfcae5d2871"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
