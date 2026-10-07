class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.18/darwin-arm64/nebula-ai-v0.1.18-darwin-arm64.tar.gz"
      sha256 "7cf0db4e4eb0e641d3f1033e628f20f5a889aa84ba5417e04b7b962e51c68085"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.18/darwin-x64/nebula-ai-v0.1.18-darwin-x64.tar.gz"
      sha256 "e305be966081902f21bb4c3be8853bf7a1087199b8e9086a7518d771b52b7d19"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.18/linux-arm64/nebula-ai-v0.1.18-linux-arm64.tar.gz"
      sha256 "bed53ef514c0641018e88df34e35635dd130459e1e0460f9f715042d43cc53df"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.18/linux-x64/nebula-ai-v0.1.18-linux-x64.tar.gz"
      sha256 "83495a27922fef01642eb7593750eb41e1a2486ac8e6a2c4c25707f4942e3c34"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
