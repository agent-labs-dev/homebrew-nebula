class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.31"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.31/darwin-arm64/nebula-ai-v0.1.31-darwin-arm64.tar.gz"
    sha256 "42491bf8ff0fb38149121e542394cb34c55e794d8d4fc552ff7cd8f042198453"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.31/linux-arm64/nebula-ai-v0.1.31-linux-arm64.tar.gz"
      sha256 "b91ec54ca7d909da42cea9eb8813e85298236fb553f03c79e48e36896c765154"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.31/linux-x64/nebula-ai-v0.1.31-linux-x64.tar.gz"
      sha256 "7deb2b03111bb4d21f6b458eb80cc37f7388e23c7725ba59b14b5dd844c9115f"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
