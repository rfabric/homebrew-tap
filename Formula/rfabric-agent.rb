class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-agent_0.2.10_darwin_arm64.tar.gz"
      sha256 "fe5eca1415df7f0121d5eefb240a498b2d9918393e4eba5db44e31120b86e2dd"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-agent_0.2.10_darwin_amd64.tar.gz"
      sha256 "51b932acf8a8303c26b3e72bad656c8047f279d42a634a8d20d0a39ed28c56a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-agent_0.2.10_linux_arm64.tar.gz"
      sha256 "1670cdd5f0bc67ea35874cdbc1b51d33056041911ab2660583f8ca1cab38fee1"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-agent_0.2.10_linux_amd64.tar.gz"
      sha256 "fa03a05150b78c9423d585cec3b7c2a3f57a414508b1ebcc01ad528934b6d0fa"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
