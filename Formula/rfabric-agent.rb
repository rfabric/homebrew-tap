class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.5/rfabric-agent_0.1.5_darwin_arm64.tar.gz"
      sha256 "70d5f6e72214bb762e85982f4a2651cfedc03bb13a8419ade0ae4bed45465bf1"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.5/rfabric-agent_0.1.5_darwin_amd64.tar.gz"
      sha256 "87ca6fe1b6b2eaa9657221e01ba8dbf361911c666e4f193f8ab9e038d32382a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.5/rfabric-agent_0.1.5_linux_arm64.tar.gz"
      sha256 "4a764b3b3fd602c481e8f194b3602c3706bca3cce559f1f421a9915e1a78a3d9"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.5/rfabric-agent_0.1.5_linux_amd64.tar.gz"
      sha256 "2dabc7be713fe680141eb57f56bb3823aaaf3ada2568db12ddf60e6976116d24"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
