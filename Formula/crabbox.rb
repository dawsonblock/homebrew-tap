class Crabbox < Formula
  desc "Run tests and commands in disposable remote sandboxes"
  homepage "https://github.com/dawsonblock/crabedence-V1"
  version "0.53.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.2/crabbox_0.53.2_darwin_arm64.tar.gz"
      sha256 "e591d4f1576d8b31bd4861f71b29c18d9f7bb52d1418d0d41ebc3df76e6e2509"
    end
    on_intel do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.2/crabbox_0.53.2_darwin_amd64.tar.gz"
      sha256 "551f6fb93502dcabed78ce9e8705d9ebc729d393253ca9a916eb466b58317508"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.2/crabbox_0.53.2_linux_arm64.tar.gz"
      sha256 "6fbc2e2507a62a1d6f60acbef351dd0d21c522997fd0e459eee403a2b7c8d9d5"
    end
    on_intel do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.2/crabbox_0.53.2_linux_amd64.tar.gz"
      sha256 "64280c1313be3f93db8e615b557572a77a994fab84a7ffdd68cb4ab2518959a4"
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
