class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.32"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.32/darwin-arm64/nebula-ai-v0.1.32-darwin-arm64.tar.gz"
    sha256 "c1f00af25da7aac5487c371dfc207b1470f8f9cd9590fa8dd81e5576f5a67d43"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.32/linux-arm64/nebula-ai-v0.1.32-linux-arm64.tar.gz"
      sha256 "8aaaac5baf5df7291c161add7fe296d889dc8035832c266242d9387de723efc0"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.32/linux-x64/nebula-ai-v0.1.32-linux-x64.tar.gz"
      sha256 "d9b73d40025b5bd54cca386292275f04e8f0405bb9de626e84f2328d8433e860"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
