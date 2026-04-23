class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.0.2/rfabric-agent_0.0.2_darwin_arm64.tar.gz"
      sha256 "5b00c86823a86bce7ba4b1209b6445aac36d8d6fa908d41ab40b3bc44dad08e2"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.0.2/rfabric-agent_0.0.2_darwin_amd64.tar.gz"
      sha256 "e787dde91ac86f402bb70927c4a710f25c747421e2b43eee59ba28a96b7f9414"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.0.2/rfabric-agent_0.0.2_linux_arm64.tar.gz"
      sha256 "4cf00039ec41da498becb8c05b3d3378562160861c01c69c25542f683fadce1c"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.0.2/rfabric-agent_0.0.2_linux_amd64.tar.gz"
      sha256 "0d646667a03064e267d69fc88056ec9744e6ba9be09523b8338c1cc4e966759f"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
