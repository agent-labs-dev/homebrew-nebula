class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.36"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.36/darwin-arm64/nebula-ai-v0.1.36-darwin-arm64.tar.gz"
    sha256 "a666095f157026d6cc514b4608bbcd127d42c6af29c48462f6bd22f71db8b3f4"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.36/linux-arm64/nebula-ai-v0.1.36-linux-arm64.tar.gz"
      sha256 "f5fe4ff1930050208c5a03383090e12e06b49d5f29df998f6fcee188919899ac"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.36/linux-x64/nebula-ai-v0.1.36-linux-x64.tar.gz"
      sha256 "26eb802fabc6c62ee80aa76d0adc6bb90082ad088b876095e95b54b3c5867cff"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
