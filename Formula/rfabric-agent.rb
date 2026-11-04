class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-agent_0.2.9_darwin_arm64.tar.gz"
      sha256 "b2bd61ef2629c4aaae3c231547861fbcaf6c9c987cf62c89927ce3eeb3c11c05"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-agent_0.2.9_darwin_amd64.tar.gz"
      sha256 "4041d43ae576ed2b177b4afe9b5cba49bf2f5e065a68745446bf99fb90a4ae3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-agent_0.2.9_linux_arm64.tar.gz"
      sha256 "7c88b3b77a2f467776f6f69ff3b1735a80d98a6c77d0e08127cce5e9eec6e60d"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.2.9/rfabric-agent_0.2.9_linux_amd64.tar.gz"
      sha256 "556f83d2870eca231c35fe2907beaf6bb68cca8b86dfee328c07f6da1cd0ddba"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
