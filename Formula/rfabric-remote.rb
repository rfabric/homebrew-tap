class RfabricRemote < Formula
  desc "rFabric remote — robot agent with interactive media video + WebRTC teleoperation"
  homepage "https://rfabric.io"
  version "0.2.0"
  license "Apache-2.0"

  depends_on "gstreamer"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-remote_0.2.0_darwin_arm64.tar.gz"
      sha256 "90af9dcff951eb0b7c803ce2907b893c2a6e8a7dc54040dcd1197b425c623d41"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-remote_0.2.0_darwin_amd64.tar.gz"
      sha256 "a9d3dd5f9ff975337502a514162434ec9f4e98cb21e21ee0edb878013b8b13dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-remote_0.2.0_linux_arm64.tar.gz"
      sha256 "ed7f04900f75eb6ce3c5ab1add412dace84417cb83960d61469206e1842ad903"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.0/rfabric-remote_0.2.0_linux_amd64.tar.gz"
      sha256 "986c5e8d309266ddb0e3e17c987bcc360a591a156944b4aa3911081f830100bc"
    end
  end

  def install
    bin.install "rfabric-remote"
  end

  test do
    system "#{bin}/rfabric-remote", "version"
  end
end
