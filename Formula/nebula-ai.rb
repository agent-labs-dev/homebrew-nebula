class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  url "https://app-assets.nebula.gg/cli/stable/v0.1.46/darwin-arm64/nebula-ai-v0.1.46-darwin-arm64.tar.gz"
  version "0.1.46"
  sha256 "ede35cb790ad4f8f24e143ca1369ecd3146f14c51175714a84d8409c221fe437"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.46/linux-arm64/nebula-ai-v0.1.46-linux-arm64.tar.gz"
      sha256 "c8025d1095f313aef86f65b182a64c9500892da2ef77cfa502c16d554722e0ad"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.46/linux-x64/nebula-ai-v0.1.46-linux-x64.tar.gz"
      sha256 "ec8ff8c94cf543fc1baa911ac8d88eb33741f48e3b5ccac28753e3d8b260b96c"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
