class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.7/rfabric-agent_0.1.7_darwin_arm64.tar.gz"
      sha256 "b15d2d49c67788c554b3929543d472a3eeb4025bbc175be9525a393709dbf018"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.7/rfabric-agent_0.1.7_darwin_amd64.tar.gz"
      sha256 "63ddd47dbbf751aacd288fb4f21abaf36ddb729a794eb1694063b30816a413c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.7/rfabric-agent_0.1.7_linux_arm64.tar.gz"
      sha256 "43570f859a66df53ff45cd1d828f7284bba555766f80534833f5209355f01b4d"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.7/rfabric-agent_0.1.7_linux_amd64.tar.gz"
      sha256 "d408e9a3c31b3589d6719eee64b6e92dc3b21d606300147653aa03344c643eae"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
