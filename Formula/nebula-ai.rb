class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.38"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.38/darwin-arm64/nebula-ai-v0.1.38-darwin-arm64.tar.gz"
    sha256 "ad36b0a71eb339310acb457e9d2c07ef564223d740364f4aacaac8bb45ea8a95"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.38/linux-arm64/nebula-ai-v0.1.38-linux-arm64.tar.gz"
      sha256 "e768a915cc1ef3b162c7a09e9e992d476bd7c74645cd1461418f4abba9d3c8b7"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.38/linux-x64/nebula-ai-v0.1.38-linux-x64.tar.gz"
      sha256 "4e7a1097fa0c407194cf8c7f30068a77f0016af64c1a2d3784449b3c2edc4044"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
