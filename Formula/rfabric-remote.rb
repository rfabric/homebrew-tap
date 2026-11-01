class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.6"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-remote_0.2.6_darwin_arm64.tar.gz"
      sha256 "120f5db011a5f4a11e62ef6e846fd9a2f1b47c214d99befb5acbf7bb899226c9"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-remote_0.2.6_darwin_amd64.tar.gz"
      sha256 "39eb0a935d492e567ae47c500cda83660b50b5d14edfa625a535152bec60ccaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-remote_0.2.6_linux_arm64.tar.gz"
      sha256 "503c7d8a3a6b2452078086078e179a29f899205a3f1155799cf5c81cb0468dfc"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.6/rfabric-remote_0.2.6_linux_amd64.tar.gz"
      sha256 "858d04a0ffa9e4d41644ce19f39121bc2d5feac7e77a539e9bf5832d75acaa90"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
