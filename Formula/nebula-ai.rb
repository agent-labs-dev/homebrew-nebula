class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.15/darwin-arm64/nebula-ai-v0.1.15-darwin-arm64.tar.gz"
      sha256 "25a054d7139cc82db55c90b1e1a871f05e4c5c4ce6e870e80a0f300e74776284"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.15/darwin-x64/nebula-ai-v0.1.15-darwin-x64.tar.gz"
      sha256 "684e1a91af65218d3ded8f9156e973ade07c54b5d4d27e975ad86828dd18e113"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.15/linux-arm64/nebula-ai-v0.1.15-linux-arm64.tar.gz"
      sha256 "d2dfa59f7676e7ba7d33513628dede1d80668baf7e5eded8b84f3cd15effa67a"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.15/linux-x64/nebula-ai-v0.1.15-linux-x64.tar.gz"
      sha256 "4e2597c09ad3f56e3ca8a0a87b922c6312577ed79b5c153954ac48ebd2eded69"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
