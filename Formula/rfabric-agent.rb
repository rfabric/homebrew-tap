class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-agent_0.2.0_darwin_arm64.tar.gz"
      sha256 "769d88fa947121547a270ee64d84adbc89279483456d70d7355b2dc52ff227bd"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-agent_0.2.0_darwin_amd64.tar.gz"
      sha256 "fe231374776f6b16675ba3ad9e3c351efba028c1481759ff182d418afcba6a58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-agent_0.2.0_linux_arm64.tar.gz"
      sha256 "d2de1080f9bee2677fb060396a0509a7cec3ed25f2d9ac34a1cfd6fccf068d75"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-agent_0.2.0_linux_amd64.tar.gz"
      sha256 "7f0d63b42aea32ae3e2008116c8c8bd38a564e7a255201bc46e15413ae61c80d"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
