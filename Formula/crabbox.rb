class Crabbox < Formula
  desc "Run tests and commands in disposable remote sandboxes"
  homepage "https://github.com/dawsonblock/crabedence-V1"
  version "0.53.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.1/crabbox_0.53.1_darwin_arm64.tar.gz"
      sha256 "8e9fb1a3efefe4f49efe28e812f12f636585ca0bf0cb98ce05ac9e333767f69f"
    end
    on_intel do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.1/crabbox_0.53.1_darwin_amd64.tar.gz"
      sha256 "53fc651e006c54d729da520fc29546e577fdbe2f646ec9df9fd4dfaaef0521a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.1/crabbox_0.53.1_linux_arm64.tar.gz"
      sha256 "39f41df2a48cc755d172b8a5c179719fff082af0157acac6ec547cbdeb0ebb5d"
    end
    on_intel do
      url "https://github.com/dawsonblock/crabedence-V1/releases/download/v0.53.1/crabbox_0.53.1_linux_amd64.tar.gz"
      sha256 "5638b781e0b89cd05228bf2f6a5e74db61f5109beb36706a8370ad44f21082f2"
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
