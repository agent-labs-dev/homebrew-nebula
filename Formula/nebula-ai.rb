class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.2/darwin-arm64/nebula-ai-v0.1.2-darwin-arm64.tar.gz"
      sha256 "7e20d6b248273006960f9eba5b6e428ed6fb8e4cb54714c85c21bbab4458a45e"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.2/darwin-x64/nebula-ai-v0.1.2-darwin-x64.tar.gz"
      sha256 "87d5cd5d58788d38d53e81b63f8769836b0e5d2c92946b9ca3f6e780c58ad15c"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.2/linux-arm64/nebula-ai-v0.1.2-linux-arm64.tar.gz"
      sha256 "d6b4d980cd33ed80d92f3a9198ce5f55963a900dda3d0d9c9bda7eaf275d5d8f"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.2/linux-x64/nebula-ai-v0.1.2-linux-x64.tar.gz"
      sha256 "cbe5a2977070d10c686630416839369441286943ccb6a82ed053088b354da98d"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
