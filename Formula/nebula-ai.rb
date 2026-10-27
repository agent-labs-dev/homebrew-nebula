class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.25/darwin-arm64/nebula-ai-v0.1.25-darwin-arm64.tar.gz"
      sha256 "b33d6a58acab4a20ddfb8bf04363d7b35ff9337b399054159041d6b1d2c5ef21"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.25/darwin-x64/nebula-ai-v0.1.25-darwin-x64.tar.gz"
      sha256 "edab6311c18c181611df97a188caf242bef9a799120b2d6759de05fbd460b4f0"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.25/linux-arm64/nebula-ai-v0.1.25-linux-arm64.tar.gz"
      sha256 "deb89ff90fa84e90b23bdf770385d56ff8837886448f5c4cf6d52cb81feed364"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.25/linux-x64/nebula-ai-v0.1.25-linux-x64.tar.gz"
      sha256 "e0a4e153b2a5769a24b1d873aee3f709fc3a16072a452f1ddcdedb9eb219a10f"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
