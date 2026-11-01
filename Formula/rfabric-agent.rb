class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-agent_0.2.6_darwin_arm64.tar.gz"
      sha256 "111cbfd6761133313ca2fddd1ae0169b6622f805a3790add33e0d663a74abcb3"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-agent_0.2.6_darwin_amd64.tar.gz"
      sha256 "ca6d6776e7beb3c32fbc6ee8d3250ea7da3f9ccb41922f104b5ba9d30d33a079"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-agent_0.2.6_linux_arm64.tar.gz"
      sha256 "43d25b63eb787051f61cd61b32f479d9922afbda0ea50a8765b4e7e374e11e4b"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-agent_0.2.6_linux_amd64.tar.gz"
      sha256 "3f992d1550cd0f94cdb45ee1ec63855fcf49a1b02e90f5ff50001b0119553aa3"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
