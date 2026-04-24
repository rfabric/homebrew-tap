class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.4/rfabric-agent_0.1.4_darwin_arm64.tar.gz"
      sha256 "632742d276c95a09c0b78d26ca8702ef58ad25fda41dbe391f895193538a5b77"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.4/rfabric-agent_0.1.4_darwin_amd64.tar.gz"
      sha256 "b651a6d1d57673501883c61d766c750377c527d103cf8bd4e9a1d37853874917"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.4/rfabric-agent_0.1.4_linux_arm64.tar.gz"
      sha256 "189a13a3c9f2e5c538abdcb4ec0aa44016689d7b3b083bc515743fe731bfe9e5"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.4/rfabric-agent_0.1.4_linux_amd64.tar.gz"
      sha256 "59201e4c9aba132b71b2f4bd86cda9fb6ced08bc368023497d795753e669b900"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
