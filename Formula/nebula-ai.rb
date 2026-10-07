class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.17/darwin-arm64/nebula-ai-v0.1.17-darwin-arm64.tar.gz"
      sha256 "bc9e67a5faa62e19556705290fd216f76505f286222ecfde110f882d06cddeb8"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.17/darwin-x64/nebula-ai-v0.1.17-darwin-x64.tar.gz"
      sha256 "af1b26a64db232c5199af57289ca47fd66dd950fed62a5c3198ea741cae52da6"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.17/linux-arm64/nebula-ai-v0.1.17-linux-arm64.tar.gz"
      sha256 "2288e27513061071a21700ab0d18a622a52c77314b59e75e39fc0017b4ef0026"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.17/linux-x64/nebula-ai-v0.1.17-linux-x64.tar.gz"
      sha256 "f848dcfaf97290a2a748aeb655e3371c372ad93f7c9c64adc71ab55409a89a22"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
