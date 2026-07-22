class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.4/darwin-arm64/nebula-ai-v0.1.4-darwin-arm64.tar.gz"
      sha256 "ed3bb5bc95eeb24f8f3c5c8aa61e77a1e84423b767762d9dcb6c452923e42ee3"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.4/darwin-x64/nebula-ai-v0.1.4-darwin-x64.tar.gz"
      sha256 "edadff223e6736dba27b430bed55152fa7fa97261f96b9488fba11930d07b07e"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.4/linux-arm64/nebula-ai-v0.1.4-linux-arm64.tar.gz"
      sha256 "619b3cd49c752a4dd3754e6e16b194cc8de9c20441e3ce43d1ec2e4a0b18ae91"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.4/linux-x64/nebula-ai-v0.1.4-linux-x64.tar.gz"
      sha256 "4be86850a5eb4be0176cdd7798026804e43d755cc42953809af7fcebeb468b5d"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
