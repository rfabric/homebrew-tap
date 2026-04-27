class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.10/rfabric-agent_0.1.10_darwin_arm64.tar.gz"
      sha256 "8d14ad1ba5fef981a53602e608702b46d20e647d72a87738b717550f5fe95ac4"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.10/rfabric-agent_0.1.10_darwin_amd64.tar.gz"
      sha256 "15d88cde2849f7589b68ad0cdd28270b7cf597f1a0e4b75eb57bda6da4041781"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.10/rfabric-agent_0.1.10_linux_arm64.tar.gz"
      sha256 "6d876ebcd2a800eec7edfc72e9b9769799ce533e32b464efd27216b83fca97f2"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.10/rfabric-agent_0.1.10_linux_amd64.tar.gz"
      sha256 "4eefe0641621ffae8ff7d77913ba23cc241544161297d4d9d6eab008f2531aed"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
