class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.5"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-remote_0.2.5_darwin_arm64.tar.gz"
      sha256 "a0451c87f3a6fd3d225b39f747f1f1494bcca88adbbd7c6036e832821d36ed6f"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-remote_0.2.5_darwin_amd64.tar.gz"
      sha256 "9753c8f4fdef20f20c327c5775b2813ed0a113052d56765ee1bf84b6117ebec5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-remote_0.2.5_linux_arm64.tar.gz"
      sha256 "c6ab0b5dd29f681979b46a6db4b855486808b7c05f103f8e1e776904720fb3f1"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.5/rfabric-remote_0.2.5_linux_amd64.tar.gz"
      sha256 "3efbebee35b3e80bcde969db1d8b935ed882f36f02bdde19cb260d4b44bef8f4"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
