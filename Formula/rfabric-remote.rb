class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.1.22"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-remote_0.1.22_darwin_arm64.tar.gz"
      sha256 "5cfc24ef6db11dc7ca4188f495e707373fef3f12968c597a6baa7fbcc3869975"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-remote_0.1.22_darwin_amd64.tar.gz"
      sha256 "fae425a74f3b5013b84fd1a3bfe7183e14af0596b33272c76cb76c78abcdad89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-remote_0.1.22_linux_arm64.tar.gz"
      sha256 "caeffd6c867855a8e78da1cc3315a91ca73e94948b71777e5f2bbe6d206f9a04"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.22/rfabric-remote_0.1.22_linux_amd64.tar.gz"
      sha256 "d6bc38ba94ff51e6bda20310915c02e1cbb51b608419cbca5abe16205cd3187c"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
