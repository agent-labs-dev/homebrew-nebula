class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.8/darwin-arm64/nebula-ai-v0.1.8-darwin-arm64.tar.gz"
      sha256 "7a2aea1d4b211312c7ae449979675b388ac42bf16a4a27e572038ec4bc431d00"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.8/darwin-x64/nebula-ai-v0.1.8-darwin-x64.tar.gz"
      sha256 "4e55310f48017c00883ce236e735dbe33c61f990d8f59dd9bb4c2f2463596ec0"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.8/linux-arm64/nebula-ai-v0.1.8-linux-arm64.tar.gz"
      sha256 "a838d62aa597ac312bda509119a2a4460e47cbf43000634e11685177c4133aa8"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.8/linux-x64/nebula-ai-v0.1.8-linux-x64.tar.gz"
      sha256 "230e633663c34ade610bf0d12efa65e678eb3b2599ac2924412ab20b4d00ff61"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
