class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.0.3/rfabric-agent_0.0.3_darwin_arm64.tar.gz"
      sha256 "cee44d9f1b96e76251d30fd1b8409e7ffb3403c49a701192709e3cecf75e2605"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.0.3/rfabric-agent_0.0.3_darwin_amd64.tar.gz"
      sha256 "d453cfaf689740cfc60b3b597f4f9b2be49bb4005d06ba1cf1036a29df76ac4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.0.3/rfabric-agent_0.0.3_linux_arm64.tar.gz"
      sha256 "c17fe81fbbb6c65b94ad2721fae27219c1f2c108680910b26eabc481d832a164"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.0.3/rfabric-agent_0.0.3_linux_amd64.tar.gz"
      sha256 "f47b7479479f744e65b34e75b414778257c156397ef7c48c29728be32b0b4b89"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
