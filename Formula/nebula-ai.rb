class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.10/darwin-arm64/nebula-ai-v0.1.10-darwin-arm64.tar.gz"
      sha256 "05a961d80c47fc2407833d2438974f74bf50f26f7c87802dd5336189c32b4ff6"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.10/darwin-x64/nebula-ai-v0.1.10-darwin-x64.tar.gz"
      sha256 "6a3e228775fda910b2b9019b45c7fbf5704b01f61ff27b32c66244ff9929ccff"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.10/linux-arm64/nebula-ai-v0.1.10-linux-arm64.tar.gz"
      sha256 "afd31607f52152329dfd7b7c04843cad4df0597d935c6ebd9983893e63b06391"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.10/linux-x64/nebula-ai-v0.1.10-linux-x64.tar.gz"
      sha256 "f2f6ad614d7caa8daccf3a59b08a859aa52042311a14cbdc9358da29120cd910"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
