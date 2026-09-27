class Crabbox < Formula
  desc "Run tests and commands in disposable remote sandboxes"
  homepage "https://github.com/dawsonblock/crabedence-V1"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.0/crabbox_0.53.0_darwin_arm64.tar.gz"
      sha256 "5fea589597283e7228e15b99a435d52830cd3f7b491d2d172f96da910a8e7ec9"
    end
    on_intel do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.0/crabbox_0.53.0_darwin_amd64.tar.gz"
      sha256 "1be3f1e00fc4f96b1dc45ed97165901d2052fabc7b2fb1677dc7ae77f6bc71ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.0/crabbox_0.53.0_linux_arm64.tar.gz"
      sha256 "b4896c0bf90903739c3e4a34ca696ef6190f7ab57fe8658625271fdff60e87c6"
    end
    on_intel do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.0/crabbox_0.53.0_linux_amd64.tar.gz"
      sha256 "071a5163f1ba24be00c4a6d8dc4665ac9361c731eec62672dc60dde6c7664482"
    end
  end

  def install
    bin.install "crabbox"
    bin.install "crabbox-apple-vm-helper" if OS.mac? && Hardware::CPU.arm?
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/crabbox --version").strip
  end
end
