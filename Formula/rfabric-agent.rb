class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.11/rfabric-agent_0.1.11_darwin_arm64.tar.gz"
      sha256 "17acaaca5e699b331c02d97e457cbf24627355b29431608e28f266b4bf8e4734"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.11/rfabric-agent_0.1.11_darwin_amd64.tar.gz"
      sha256 "f0cbd8d9924801312035b64309468b0e0ab6e7a7a93158ac39d8f61c8437ecc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.11/rfabric-agent_0.1.11_linux_arm64.tar.gz"
      sha256 "550045b19ad2ff627140e852294a4b010e333c922e42a77181fa6f29268d67dc"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.11/rfabric-agent_0.1.11_linux_amd64.tar.gz"
      sha256 "90f65af838d9808052cecea4bda563d7d9a1991498868dd6c69ec7a6ff0ac4c0"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
