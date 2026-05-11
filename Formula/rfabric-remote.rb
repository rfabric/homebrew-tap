class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.1.23"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-remote_0.1.23_darwin_arm64.tar.gz"
      sha256 "7073c37fa1d09837826331ec810511f9a7c08776e406b8bb3c20bffc15e45c35"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-remote_0.1.23_darwin_amd64.tar.gz"
      sha256 "4a1559f986bf48991aed794244c80e4339ac5480542cb0f76a518bc2b343520f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-remote_0.1.23_linux_arm64.tar.gz"
      sha256 "daba1d8eb7b5bb1295621984a5b078d8c98c9d4b9b0c45be3240224e270eee20"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.23/rfabric-remote_0.1.23_linux_amd64.tar.gz"
      sha256 "6a8d4fd5b69110def1dd7783ffb7f1973da984fca7985ea90ab3b419f047c8c2"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
