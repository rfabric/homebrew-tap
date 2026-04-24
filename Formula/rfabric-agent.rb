class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.3/rfabric-agent_0.1.3_darwin_arm64.tar.gz"
      sha256 "fbc5d4ba08959a84f6a9b43a696f44582c817d2e1108d07bb65040e24763b527"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.3/rfabric-agent_0.1.3_darwin_amd64.tar.gz"
      sha256 "b6f6c7ccfb48570bbdac308287a350100bfb0e2ae6cf7bd84560bf0b64652834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.3/rfabric-agent_0.1.3_linux_arm64.tar.gz"
      sha256 "09fe6fe039f3141e1335f002c4265deccb00a533be533b9dac52718a0b19710e"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.3/rfabric-agent_0.1.3_linux_amd64.tar.gz"
      sha256 "c22750eead0ae362370e4570a381f922b864afed3c562e9f133e3f15660581d6"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
