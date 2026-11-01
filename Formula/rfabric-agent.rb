class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-agent_0.2.4_darwin_arm64.tar.gz"
      sha256 "6f9704a5361069cf8abbbdd5804ff7b25fce633d9cbd6f6307dcba4f46d90952"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-agent_0.2.4_darwin_amd64.tar.gz"
      sha256 "19a0dcb0e56cd345ed487d31d72af4e4c9ce9eff648e8e3569adb1de197efe18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-agent_0.2.4_linux_arm64.tar.gz"
      sha256 "bc646728d122a79976ee5dd4fc3bf17f3d0007fdcd9edebde25f5db38456fa38"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.4/rfabric-agent_0.2.4_linux_amd64.tar.gz"
      sha256 "1352e714497b387bd7e0912218edef514b16b5262701a414b9b63bb5c9136625"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
