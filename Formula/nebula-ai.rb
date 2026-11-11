class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.41"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.41/darwin-arm64/nebula-ai-v0.1.41-darwin-arm64.tar.gz"
    sha256 "72de76904bf6244e07b7418245c5530be079eabb62318057aa4590253b2242b7"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.41/linux-arm64/nebula-ai-v0.1.41-linux-arm64.tar.gz"
      sha256 "295dd880ec922031011fa6fab7b982659be709aaf5c94cfe22f5f40eab27f865"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.41/linux-x64/nebula-ai-v0.1.41-linux-x64.tar.gz"
      sha256 "636009a07d21c9bb2cddcdd2820817fa06f9de24f5ca5f8f4ba7de25c3d6c2ac"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
