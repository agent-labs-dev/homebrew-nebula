class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  url "https://app-assets.nebula.gg/cli/stable/v0.1.44/darwin-arm64/nebula-ai-v0.1.44-darwin-arm64.tar.gz"
  version "0.1.44"
  sha256 "fa4c2791beeb9b7385e969d5aa076ae95f805384160785ae750e6f16b8008a7f"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.44/linux-arm64/nebula-ai-v0.1.44-linux-arm64.tar.gz"
      sha256 "b333d507ce0c4a7ee67a4162b49e92ff7e803bb922c72a361d374f2c40cbde85"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.44/linux-x64/nebula-ai-v0.1.44-linux-x64.tar.gz"
      sha256 "7a8c93de6105cf191dd94099b1c09c22aaea2a1b79cf570b3cf6fa6222dc206f"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
