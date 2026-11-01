class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-agent_0.2.5_darwin_arm64.tar.gz"
      sha256 "e31250804442f88a546ec2610a7c02a9a134d62d3055ca07769869de41c37280"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-agent_0.2.5_darwin_amd64.tar.gz"
      sha256 "49a7e8322a6b27fd33067655ae8a2170641f92d6d3eafd266d93c495eefef235"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-agent_0.2.5_linux_arm64.tar.gz"
      sha256 "ccc8b042051b8c5965101bb71ee064c3707dad5accb901d89ba18122a2290c80"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-agent_0.2.5_linux_amd64.tar.gz"
      sha256 "806197782bdd14812dd34f061a8fd324fa48223aeca7860edeae46916e7eafa5"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
