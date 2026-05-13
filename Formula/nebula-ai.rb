class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.18/darwin-arm64/nebula-ai-v0.0.18-darwin-arm64.tar.gz"
      sha256 "8d9c7be8196cc70c1a3ff65526a5542debc65c50c3efe96a4f8427af751edba5"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.18/darwin-x64/nebula-ai-v0.0.18-darwin-x64.tar.gz"
      sha256 "1f604e5201fda9c787d1d6ba1194212ba4ca9074dd72c3560b8d16525dbaf666"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.18/linux-arm64/nebula-ai-v0.0.18-linux-arm64.tar.gz"
      sha256 "6e77d25f4f7f18ed73600167aa2b69254cb88aaaf8bc5d745d4de8310cedb3bb"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.18/linux-x64/nebula-ai-v0.0.18-linux-x64.tar.gz"
      sha256 "abd4c7b458f7a7e7f8a0b36a6d823db3bab6ac773b76009a7583c07fe577930a"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
