class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.20/darwin-arm64/nebula-ai-v0.0.20-darwin-arm64.tar.gz"
      sha256 "4c270d8c2c87ff64f481ad53713e658eb1c8568bc5ad541bb3f7b39b56951040"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.20/darwin-x64/nebula-ai-v0.0.20-darwin-x64.tar.gz"
      sha256 "af2baac9e33c3194b864dafcbdee9e862c26bbe8052e08b3b7e377844c04da7f"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.20/linux-arm64/nebula-ai-v0.0.20-linux-arm64.tar.gz"
      sha256 "989b91b5acb82588fbb9322d89b63ec2e7e1863e8951cc45a779b48f11a2fabc"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.20/linux-x64/nebula-ai-v0.0.20-linux-x64.tar.gz"
      sha256 "1cbb5a5238ffa4dd7561898d14e5fd9c9a8171a14c9014901727a4c98a906558"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
