class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.13"
  license "Apache-2.0"

  # Runtime dependency for the LiveKit + V4L2 → H264 capture pipeline
  # baked into every release binary. Homebrew resolves the right
  # bottle for the user's macOS arch.
  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.13/rfabric-agent_0.1.13_darwin_arm64.tar.gz"
      sha256 "a3b900532926da544a615152d0bc46fcf4d5975c5100e9d72239d5b38c6fa2f0"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.13/rfabric-agent_0.1.13_darwin_amd64.tar.gz"
      sha256 "ec216639584f34f6d75ba808c9f0fb00e35030e6c874980580710dd4ae903ef2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.13/rfabric-agent_0.1.13_linux_arm64.tar.gz"
      sha256 "d1213a7466d8e1a9c71ddf51fd57217dccb72651ba7debee6829eddff2e98757"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.13/rfabric-agent_0.1.13_linux_amd64.tar.gz"
      sha256 "52520e77ccb4198664b6250b78c5d5e63cd9200adb4ef9f00e918a9cf039c99b"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
