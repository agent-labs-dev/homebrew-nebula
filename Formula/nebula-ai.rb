class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.21/darwin-arm64/nebula-ai-v0.0.21-darwin-arm64.tar.gz"
      sha256 "87bc91284b6bfbd6a425983be29d2e3ad72172330d16a2718f231470cc8fe609"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.21/darwin-x64/nebula-ai-v0.0.21-darwin-x64.tar.gz"
      sha256 "c5419e3be2e4eb4d34522a3dbb8f188d015bfb4d18c99074877c28f80da13d90"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.21/linux-arm64/nebula-ai-v0.0.21-linux-arm64.tar.gz"
      sha256 "470b4091e9d306b42fec5323804ddc68a51942c84792b4de74c72e3106cd29df"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.21/linux-x64/nebula-ai-v0.0.21-linux-x64.tar.gz"
      sha256 "61449aed66ef397de884052b94b81e732c792e942953756a97c153f94e5943b2"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
