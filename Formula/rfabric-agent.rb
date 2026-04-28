class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.14"
  license "Apache-2.0"

  # Runtime dependency for the LiveKit + V4L2 → H264 capture pipeline
  # baked into every release binary. Homebrew resolves the right
  # bottle for the user's macOS arch.
  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.14/rfabric-agent_0.1.14_darwin_arm64.tar.gz"
      sha256 "22f0db960e4255175c08b90293ec08b8c74405ca3d96fc53417409f664405d27"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.14/rfabric-agent_0.1.14_darwin_amd64.tar.gz"
      sha256 "c47f271cadfd5afa600343e53cefd7c0d5c49fc1e3fe5461306ec845e3aa4c4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.14/rfabric-agent_0.1.14_linux_arm64.tar.gz"
      sha256 "9f65a5ce3d6913b9d4058fb411cb4134f59b8587a5ff0a66780358d070a4f445"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.14/rfabric-agent_0.1.14_linux_amd64.tar.gz"
      sha256 "d8f0a5f6f86cdc0319f5fb46cda86c6104a5a9dda9ee4f89777fdad9bd09c358"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
