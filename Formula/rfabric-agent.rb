class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.22"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-agent_0.1.22_darwin_arm64.tar.gz"
      sha256 "2a6e08a20d409313071ef510d9590603bc1c21f4559d55f9e7445523693603b9"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-agent_0.1.22_darwin_amd64.tar.gz"
      sha256 "80a1adffbc1e585678cb9927459e00a1cc117fa9a0ba1b89fff3dd5e0c133374"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-agent_0.1.22_linux_arm64.tar.gz"
      sha256 "bc552896d4f3509ba4e0f916734f7177b4d294c2a5f9f3dcde269955462cc072"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-agent_0.1.22_linux_amd64.tar.gz"
      sha256 "67848a13a6380faf0b3e3c6b1f8aa8b3b11f65de1d8624ff7411618f1f01132a"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
