class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.8/rfabric-agent_0.1.8_darwin_arm64.tar.gz"
      sha256 "b46a9393600cc8366a28534fbcc288213c19b158ad36aa61f1ea983169189527"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.8/rfabric-agent_0.1.8_darwin_amd64.tar.gz"
      sha256 "1bce33802c230ec3fe014d64cb110a579e7a00b9d1e41659373057cbdd7a6dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.8/rfabric-agent_0.1.8_linux_arm64.tar.gz"
      sha256 "896b83231715ada567ef3b2c972161662fff2f28fe1db0ba669228fe04420be1"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.8/rfabric-agent_0.1.8_linux_amd64.tar.gz"
      sha256 "a555df46fabf6f32a662e3f93cabf8bd793c60768e93ffb6882cf1b34fe7e3fa"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
