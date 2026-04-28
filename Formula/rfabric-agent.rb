class RfabricAgent < Formula
  desc "rFabric robot agent — bridges a robot to the rFabric platform"
  homepage "https://rfabric.io"
  version "0.1.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-agent_0.1.18_darwin_arm64.tar.gz"
      sha256 "35b9608acd9e2b33357fd5987f4e7fbb337579e81b4abd1d85be42f89dd2555b"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-agent_0.1.18_darwin_amd64.tar.gz"
      sha256 "451878c60e5b7b0566fa2482866df5b1900f3243638279f38c7ea0b3cebbae8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-agent_0.1.18_linux_arm64.tar.gz"
      sha256 "88bf48c0a1d8d13800c32b16a3bb2819cb2a3bd862e9d85eb541924feab3d4e8"
    end
    on_intel do
      url "https://github.com/rfabric/agent/releases/download/v0.1.18/rfabric-agent_0.1.18_linux_amd64.tar.gz"
      sha256 "b7f38a382a45c7dcb639317f819d4490cbe4f3b4fb53e79dfe68eef5f9a5c157"
    end
  end

  def install
    bin.install "rfabric-agent"
  end

  test do
    system "#{bin}/rfabric-agent", "version"
  end
end
