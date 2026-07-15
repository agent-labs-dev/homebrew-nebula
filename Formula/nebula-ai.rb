class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.3/darwin-arm64/nebula-ai-v0.1.3-darwin-arm64.tar.gz"
      sha256 "463052641fa109250e969edcf2a2bf1095b2227c95df568162779f5f8ff30df0"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.3/darwin-x64/nebula-ai-v0.1.3-darwin-x64.tar.gz"
      sha256 "e2830c9ee1f8e1b4017ded3df18dc6e9cab3dc6ba7b99dc8c758463a8c631e36"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.3/linux-arm64/nebula-ai-v0.1.3-linux-arm64.tar.gz"
      sha256 "56e438b1000b2bbd755d42ae2454bb8d25dfa28146de0de7c4c6819cc982c074"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.3/linux-x64/nebula-ai-v0.1.3-linux-x64.tar.gz"
      sha256 "3745094bb230c25a290f04ac55965db1d2d376b31f49a448b47479c871c29b93"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
