class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-cli"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.15/darwin-arm64/nebula-ai-v0.0.15-darwin-arm64.tar.gz"
      sha256 "73ef7b97b2ecbce43feb02a386092af40050823db78cf9804e8bbea4c360036e"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.15/darwin-x64/nebula-ai-v0.0.15-darwin-x64.tar.gz"
      sha256 "4d5efff339801f87497e3080f578957d09cf63588435111e89c87f5b5fac08df"
    end
  end

  on_linux do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.15/linux-arm64/nebula-ai-v0.0.15-linux-arm64.tar.gz"
      sha256 "5bb647c6e43f59a1e8440b254e548768114845842506e7c2ec83444947231eed"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.15/linux-x64/nebula-ai-v0.0.15-linux-x64.tar.gz"
      sha256 "a8ae0e18eb1be91e24c14475847b6895f0be3b9578a1288edbbafb7bbaf4c6f2"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
