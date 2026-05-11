class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.23"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-agent_0.1.23_darwin_arm64.tar.gz"
      sha256 "e46fd6366b529d1ddba292e6da25f7109f31dcd9d9f9096bcb653be8be0761bf"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-agent_0.1.23_darwin_amd64.tar.gz"
      sha256 "643ffc1b171ea62cbdf06c4fad802ce1bdd5cc100b41a0b4a32c677d54368a96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-agent_0.1.23_linux_arm64.tar.gz"
      sha256 "4e98306a967530fa27f880eed25dd57751818ed2ed6cb4a33c649179bfe193f4"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-agent_0.1.23_linux_amd64.tar.gz"
      sha256 "f222ee29c29d82b2304e5fd426b8256830bf1fe0bce696dde5bae78a6ae15034"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
