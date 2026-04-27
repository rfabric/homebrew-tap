class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.9/rfabric-agent_0.1.9_darwin_arm64.tar.gz"
      sha256 "181fcb23f9b7ac1cc3ea0754d3d83ef17c4eb1e8d993065be4d23be39c427347"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.9/rfabric-agent_0.1.9_darwin_amd64.tar.gz"
      sha256 "7b1a009292c795fc23061427f0b1e820713206ee986a35038c8d2d4d1277e502"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.9/rfabric-agent_0.1.9_linux_arm64.tar.gz"
      sha256 "6ad30a9beb6dd96366b4f5e9b5aac864c58b374bd4a3757fed18c8c1e5554ef3"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.9/rfabric-agent_0.1.9_linux_amd64.tar.gz"
      sha256 "6f58c9998ea2d1ad13f34489965a8b2117c7cefbea6aad61009e21bc40257834"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
