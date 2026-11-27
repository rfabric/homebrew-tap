class Rfabricd < Formula
  desc "Bridges a robot to the rFabric platform, with interactive media and teleoperation"
  homepage "https://rfabric.io"
  version "0.2.13"
  license "Apache-2.0"
  depends_on "gstreamer"
  on_macos do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd_0.2.13_darwin_arm64.tar.gz"
      sha256 "3136ffd5dd93cdbc5cba0ac73c5f7c3bc142ae924e27d72e45200553a018c017"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd_0.2.13_darwin_amd64.tar.gz"
      sha256 "445d7acd564b7fef48fec152f4a335237e7d9c7136dfa912cf0e5e21532f5a57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd_0.2.13_linux_arm64.tar.gz"
      sha256 "8ea9ad187c76b03d61f22f7683807b248a0c825b3c40e25ff1bb817363455df5"
    end
    on_intel do
      url "https://github.com/rfabric/rfabricd/releases/download/v0.2.13/rfabricd_0.2.13_linux_amd64.tar.gz"
      sha256 "6265abcf855b5d9da0bcc04a726738702d38b0819f5d4ea84bb3f8b8e5518556"
    end
  end

  def install
    bin.install "rfabricd"
  end

  test do
    system "#{bin}/rfabricd", "version"
  end
end
