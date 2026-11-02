class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-agent_0.2.8_darwin_arm64.tar.gz"
      sha256 "7db2a1c4de5448d9d79d0da5743196b55bf92ef1785cae8a13e4612343d63ea8"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-agent_0.2.8_darwin_amd64.tar.gz"
      sha256 "0756eff36ab1b912de425c6d445ed0280bfe737d6ca03feb32f774d3bdee1bb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-agent_0.2.8_linux_arm64.tar.gz"
      sha256 "5d8409f545454a9a004c66a13b12b25280600ba30e169d4cdb047def58275754"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.8/rfabric-agent_0.2.8_linux_amd64.tar.gz"
      sha256 "e7e0747139a2a7c867fc2f452cad39a28e95d44dcdd3c46a0bc42335f1b9987a"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
