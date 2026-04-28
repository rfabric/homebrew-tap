class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.17/rfabric-agent_0.1.17_darwin_arm64.tar.gz"
      sha256 "5543eb994b8e50a7b029e3d633cd640be5de1ce82dfb06f10c5ad0b0257f74d5"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.17/rfabric-agent_0.1.17_darwin_amd64.tar.gz"
      sha256 "f4232f3cee560cf2ed36187e25cacfa63dc21607a1adcde016ee5af93333cb71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.17/rfabric-agent_0.1.17_linux_arm64.tar.gz"
      sha256 "dd0714679e9b7ce46fa62da03cd5f11a2b550ecb70920c69c485c96726d60321"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.17/rfabric-agent_0.1.17_linux_amd64.tar.gz"
      sha256 "8391920edde56a1941d7681d9dd7b057af681a6610aacd7e5c4a4d020e562785"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
