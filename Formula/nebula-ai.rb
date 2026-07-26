class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.5/darwin-arm64/nebula-ai-v0.1.5-darwin-arm64.tar.gz"
      sha256 "a8bfc3135563c6a78e029f62263d47ebed7cc824c582f0c0ca20385e161df540"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.5/darwin-x64/nebula-ai-v0.1.5-darwin-x64.tar.gz"
      sha256 "e8f2711c4d84fcd735e94f5eacbd1f2278310a38f269989601d71f9cd3b3da78"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.5/linux-arm64/nebula-ai-v0.1.5-linux-arm64.tar.gz"
      sha256 "65daf409ed43b0fbf441dd4b788fd86bc8dfe7e994d17128d60bfaa160b93923"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.5/linux-x64/nebula-ai-v0.1.5-linux-x64.tar.gz"
      sha256 "efebf24c9802e6e87e990eefcb42034710cc791957e8e2020b6e7d5cf6c47bf9"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
