class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.10"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-remote_0.2.10_darwin_arm64.tar.gz"
      sha256 "8e0929d3602ace743328c4cffa7a572da9733d7d9abba04ec0ec835de697590d"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-remote_0.2.10_darwin_amd64.tar.gz"
      sha256 "7fd58f4084e90b3c4cc4a01d753da85b73080d9a87144f89b8955af8e95bb558"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-remote_0.2.10_linux_arm64.tar.gz"
      sha256 "6d36a556bfcefb4256123abbb12e509a234ec49f853a3ddfa19663c040bcc92c"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.10/rfabric-remote_0.2.10_linux_amd64.tar.gz"
      sha256 "adcb09e056471292ad290fe5e1c81984bb75b03e564e186f6b78c0e6945b0f21"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
