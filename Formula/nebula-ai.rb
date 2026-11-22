class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  url "https://app-assets.nebula.gg/cli/stable/v0.1.45/darwin-arm64/nebula-ai-v0.1.45-darwin-arm64.tar.gz"
  version "0.1.45"
  sha256 "0acbe5a93fa8faa40e425df6dc7a52f2bb612ae4ea394383c3946b8cfc717d54"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.45/linux-arm64/nebula-ai-v0.1.45-linux-arm64.tar.gz"
      sha256 "33fb7fd0a77b58a291377a416a53d0d5c8c5a5b31f4dcfa74c7ce93d55e4838e"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.45/linux-x64/nebula-ai-v0.1.45-linux-x64.tar.gz"
      sha256 "311f3b3a6b34ba9025a3c45a91ec0fd0d0750a5ddfbb7f1a4929ce487ee5bbd0"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
