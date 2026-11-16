class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  url "https://app-assets.nebula.gg/cli/stable/v0.1.43/darwin-arm64/nebula-ai-v0.1.43-darwin-arm64.tar.gz"
  version "0.1.43"
  sha256 "8c6cf9d6e464f2e5096b57c350ecc821a3d53277f66b9a975ba4cddb3b8b2787"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.43/linux-arm64/nebula-ai-v0.1.43-linux-arm64.tar.gz"
      sha256 "91b2a4ec0e53712c75814b437cb8391bf5c4e3a081bb37245af000fdda81ae27"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.43/linux-x64/nebula-ai-v0.1.43-linux-x64.tar.gz"
      sha256 "1b7c3e55fcb4574cca6fe8a0350d2ad9c0f389af8f9616bb55a557c9940e95b0"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
