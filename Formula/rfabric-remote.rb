class RfabricRemote < Formula
  desc "rFabric remote — robot agent with LiveKit video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.1.18"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-remote_0.1.18_darwin_arm64.tar.gz"
      sha256 "9aa224d8af30aa4bdae4744270c516ef371e7ced7a8fc4d2573ee4f60321c13c"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-remote_0.1.18_darwin_amd64.tar.gz"
      sha256 "72b078f30fc499586b1a8e1828d96269440ebd964b01818aed0bfd6c4e2dbecd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-remote_0.1.18_linux_arm64.tar.gz"
      sha256 "87a7b168f20b0a3961a26dfac271e30c1ef5c6000b3a79825aac49d6e9b33e61"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-remote_0.1.18_linux_amd64.tar.gz"
      sha256 "ecaa35b5cd71cc21cd374c8aacde5d214bb28d1c7027f26b89ba03afcdac6eb2"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
