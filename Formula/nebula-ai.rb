class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.35"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.35/darwin-arm64/nebula-ai-v0.1.35-darwin-arm64.tar.gz"
    sha256 "dd18a386329be335b4e50d508463e2065f51930b74d6c9c99cb9f99a99246531"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.35/linux-arm64/nebula-ai-v0.1.35-linux-arm64.tar.gz"
      sha256 "31c7e94a38b2cf6cd4c433cf075834923ae3ee9d9648aac1a482f737053f2f46"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.35/linux-x64/nebula-ai-v0.1.35-linux-x64.tar.gz"
      sha256 "ed0a0e4dd1d550ac69bf1ba262661a16af73672ca90113ecc508690eb9b18c8c"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
