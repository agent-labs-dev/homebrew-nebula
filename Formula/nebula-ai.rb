class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.27"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.27/darwin-arm64/nebula-ai-v0.1.27-darwin-arm64.tar.gz"
    sha256 "5fe03d5bee55c30706e0caf6816a491c3b2c4af4f3ab56903f7769104d3d2398"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.27/linux-arm64/nebula-ai-v0.1.27-linux-arm64.tar.gz"
      sha256 "f9d7b0d1961cd5fc853e81dd9b5ba1ee31f4cfc11ac0821bf9d9d4f411610a78"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.27/linux-x64/nebula-ai-v0.1.27-linux-x64.tar.gz"
      sha256 "35d22ca03f5c5b33f8df2bc72c757ae53a27c5a15d6e3d9abe0e9f2c6f39baff"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
