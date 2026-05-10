class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.1.21"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-remote_0.1.21_darwin_arm64.tar.gz"
      sha256 "ea3cf3e6304dc46e20382e8bf0173914bd8470a6ef2bda7a7d884a01a9bc7acb"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-remote_0.1.21_darwin_amd64.tar.gz"
      sha256 "18683499042ef17c68659217ad112296595381ad70d62e66815df9e34a007ed2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-remote_0.1.21_linux_arm64.tar.gz"
      sha256 "ff81acae711a9a759a5dfd66899517b054814df56fffdd47835869b5baec9dc2"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.21/rfabric-remote_0.1.21_linux_amd64.tar.gz"
      sha256 "076dfefe82f035ca135b68dd0129aff275f7032edc734f8584455496560ee2f4"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
