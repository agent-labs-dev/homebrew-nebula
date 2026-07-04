class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.26/darwin-arm64/nebula-ai-v0.0.26-darwin-arm64.tar.gz"
      sha256 "91e41ec3fff9e1e15ff3b5b08ed48ccd9c7201efd1b47b7f20b832c44b62fedb"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.26/darwin-x64/nebula-ai-v0.0.26-darwin-x64.tar.gz"
      sha256 "4cb85888dba0685f63bb658ef4aca6e488e5636d1f5a2b0ccd2344cb2cb84568"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.26/linux-arm64/nebula-ai-v0.0.26-linux-arm64.tar.gz"
      sha256 "b6dfcd8edd135f049a3131733649c04f779a6e6262589ff8921fcddb49a7fa1b"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.26/linux-x64/nebula-ai-v0.0.26-linux-x64.tar.gz"
      sha256 "aba957a29558d28791b03c8aeee3759c8168478cb7c6416c3bcad7414fb3b147"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
