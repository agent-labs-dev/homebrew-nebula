class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.6/darwin-arm64/nebula-ai-v0.1.6-darwin-arm64.tar.gz"
      sha256 "902112da0cf98c88e7203cd77ffd70583f4731ad772d06d89579df5b1dedf0b9"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.6/darwin-x64/nebula-ai-v0.1.6-darwin-x64.tar.gz"
      sha256 "47b82c13a0a44cd27e155faf807cb165dfd19a41517ef9fe7d81b6a0d3e1e98f"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.6/linux-arm64/nebula-ai-v0.1.6-linux-arm64.tar.gz"
      sha256 "652f014b52efbfa20a34c35f45015e0caf0cb52fc96765727a0f2444f3cb01de"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.6/linux-x64/nebula-ai-v0.1.6-linux-x64.tar.gz"
      sha256 "2b37259ccc27e8eccfa6d78b3a904b6c0feb796bc39eab19300248429f68cb81"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
