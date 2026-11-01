class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-agent_0.2.2_darwin_arm64.tar.gz"
      sha256 "15ce82c666bff9c4ad243ae8ae1e5616d49cc5b7b1154ab811ee8000d8dcf054"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-agent_0.2.2_darwin_amd64.tar.gz"
      sha256 "06fb0d32b2bf65993ff652595c041d7948db3dd07cd87b2ce793257df4c4b4a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-agent_0.2.2_linux_arm64.tar.gz"
      sha256 "b031e1852ce1dd08f5d3449305e653f0d7262b3d8f57b62feb26e94c0f3474e6"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.2/rfabric-agent_0.2.2_linux_amd64.tar.gz"
      sha256 "0bd59f1940a7b19fc5f7e1c1bd05a4762ef1bed15f48e712ce5af6f290c188a5"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
