class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.20/darwin-arm64/nebula-ai-v0.1.20-darwin-arm64.tar.gz"
      sha256 "e1f9fbb4d879698ea9cb87ca2dff3e0e303235c76e54c79fbbbc34e9e8b3093f"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.20/darwin-x64/nebula-ai-v0.1.20-darwin-x64.tar.gz"
      sha256 "cbfaa3bd714a6e85d3fd2f02affc0e478b7cabeb0a9fc163ae808bb2e50cd8d2"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.20/linux-arm64/nebula-ai-v0.1.20-linux-arm64.tar.gz"
      sha256 "d2ce1e7291a0adfdb0b2cc485500a318040fe75b5bc255efcf7dd52b8df43a9c"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.20/linux-x64/nebula-ai-v0.1.20-linux-x64.tar.gz"
      sha256 "fba88b49122b4f6439bdcd67648b767f515dcda02f7b146357babd90de1249fa"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
