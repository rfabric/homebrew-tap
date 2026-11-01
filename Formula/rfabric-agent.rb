class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-agent_0.2.1_darwin_arm64.tar.gz"
      sha256 "c3aff90615ba57c3e2b7d1b9ebed2b6d2ea997bda14ee58f720a9c804773841b"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-agent_0.2.1_darwin_amd64.tar.gz"
      sha256 "053a7a54710fdbe5dfad8ca102256656baedc2c4d464f2e02a9b7e3f49edde2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-agent_0.2.1_linux_arm64.tar.gz"
      sha256 "d09f8dd5d29eb18b51646811d304efc6e54270f987ad504b351445a76dfe260a"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.1/rfabric-agent_0.2.1_linux_amd64.tar.gz"
      sha256 "abb8667cbc499d3928df612ab3649699b89465e67e43af7bf755c59b84125c52"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
