class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-agent_0.1.21_darwin_arm64.tar.gz"
      sha256 "7af7d145217b7ae8fa1928010fea6a09e7316ed3d8601093ea437a9c9062e1fd"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-agent_0.1.21_darwin_amd64.tar.gz"
      sha256 "f0d2bd66336012faab2247f8745d66a91e60d9482a2ebaadd8c9200186c6c150"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-agent_0.1.21_linux_arm64.tar.gz"
      sha256 "5b5857df2e9aca465aadbba2debc297ba01a9436a2ee13e5b0083f452e4f8454"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-agent_0.1.21_linux_amd64.tar.gz"
      sha256 "106574f62440272ce214ac2bb55d30ceff29f8c8fb13e88d5a73baa3e81d45d1"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
