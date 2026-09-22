class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.11/darwin-arm64/nebula-ai-v0.1.11-darwin-arm64.tar.gz"
      sha256 "fcc3c76f422cc6da3ada22d268e30108626aa445a54da3642666bce08a9e781f"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.11/darwin-x64/nebula-ai-v0.1.11-darwin-x64.tar.gz"
      sha256 "1a578e9da33b39379e4a701f26161ef30a0386a08770d0301184e94c8584741a"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.11/linux-arm64/nebula-ai-v0.1.11-linux-arm64.tar.gz"
      sha256 "24d07b0b09170a80d31796f46303acf472d31209f991a9e0e582b619190b842d"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.11/linux-x64/nebula-ai-v0.1.11-linux-x64.tar.gz"
      sha256 "3997906031c3e98e8e2154eeb83e40271d6997feee79cf370a7c861d8666fd4b"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
