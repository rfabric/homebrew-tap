class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.1/rfabric-agent_0.1.1_darwin_arm64.tar.gz"
      sha256 "6018a6c89e602314bdbbb64b1a916625bbe02a5bc185fdfb9a1f399dae1a88cb"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.1/rfabric-agent_0.1.1_darwin_amd64.tar.gz"
      sha256 "afd867a4fc5476bf376385f2b9c86ad046362e02ad1ca64b18d3aef1ae99b250"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.1/rfabric-agent_0.1.1_linux_arm64.tar.gz"
      sha256 "1884c715258caa9771d8d279bb6d9d01d2d0ecd84d16b147bf21cf24df55adef"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.1/rfabric-agent_0.1.1_linux_amd64.tar.gz"
      sha256 "efeab65193d24a6409f7a47c2b421850d05e0206292828f263ebfcc6d5900747"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
