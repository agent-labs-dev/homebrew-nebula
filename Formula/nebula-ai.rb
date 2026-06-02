class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.23/darwin-arm64/nebula-ai-v0.0.23-darwin-arm64.tar.gz"
      sha256 "0c3c47af3713571b6f1c0fb007a07a1e461ec59cc084f7a3998804d4d9e5534c"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.23/darwin-x64/nebula-ai-v0.0.23-darwin-x64.tar.gz"
      sha256 "8b7895a57de152e2a36119e9315495514355ffb8d6870957b9da8e466122ed83"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.23/linux-arm64/nebula-ai-v0.0.23-linux-arm64.tar.gz"
      sha256 "82c44d68bd75db3d858ef844b1c213ae9569848880eeb6e2754a77027d53c22c"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.23/linux-x64/nebula-ai-v0.0.23-linux-x64.tar.gz"
      sha256 "7e486c518f6e438affe34817d54708f58bcec5b7548e1c0c9be6b46d56e66b47"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
