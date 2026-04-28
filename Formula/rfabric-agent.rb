class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.15"
  license "Apache-2.0"

  # Runtime dependency for the LiveKit + V4L2 → H264 capture pipeline
  # baked into every release binary. Homebrew resolves the right
  # bottle for the user's macOS arch.
  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.15/rfabric-agent_0.1.15_darwin_arm64.tar.gz"
      sha256 "6b5d30261b6e36e81b38fe89d9e9b904d526042bf3dd0727b5e174d72a8ba15a"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.15/rfabric-agent_0.1.15_darwin_amd64.tar.gz"
      sha256 "dd286d5e9f88f7ccc98d5fe6435e269bdb546c7d8dcd0a26ffe36b781849421e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.15/rfabric-agent_0.1.15_linux_arm64.tar.gz"
      sha256 "dd0f78500f22438e6d9796fc6a3eb9fa46e3e84ba41e75b58dc0fb9461d4e7a6"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.15/rfabric-agent_0.1.15_linux_amd64.tar.gz"
      sha256 "729a1faf1222f1c17b27b260a8a9bd16e424056b1ab3808f06253c213eb2b415"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
