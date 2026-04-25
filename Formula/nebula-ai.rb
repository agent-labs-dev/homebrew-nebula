class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-cli"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.16/darwin-arm64/nebula-ai-v0.0.16-darwin-arm64.tar.gz"
      sha256 "baa6181727d11e34d909e58ab4d2a51572f2d972f2c884cc33af4b58b826eb81"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.16/darwin-x64/nebula-ai-v0.0.16-darwin-x64.tar.gz"
      sha256 "65e805c142bb47cfcfa582764ece770658793503fba53a024ffadb5bbea19ca9"
    end
  end

  on_linux do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.16/linux-arm64/nebula-ai-v0.0.16-linux-arm64.tar.gz"
      sha256 "5f30b9a5e720101e1903b48ff8a4fa4a216a4f53b636968090ccfc20f1e536b9"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.16/linux-x64/nebula-ai-v0.0.16-linux-x64.tar.gz"
      sha256 "d6083ffb8d7e7cbcfe2aa09489680bb0cc6c850516876051f065aed0be72e1f4"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
