class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-cli"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.14/darwin-arm64/nebula-ai-v0.0.14-darwin-arm64.tar.gz"
      sha256 "00cf29e4dfcc7c2448fb2436a2e6ffbe360c83f6476e7dc145350e8f8057558a"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.14/darwin-x64/nebula-ai-v0.0.14-darwin-x64.tar.gz"
      sha256 "200d1a216fbebc0a56db163b8cee191fd4144ee0ef02c17a8199b06cbff4abc2"
    end
  end

  on_linux do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.14/linux-arm64/nebula-ai-v0.0.14-linux-arm64.tar.gz"
      sha256 "44bac38440f3ff05adf7270178ad97659862bcd699dbb993bf4f906ca18826b4"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.14/linux-x64/nebula-ai-v0.0.14-linux-x64.tar.gz"
      sha256 "6702d60f09f52532fa3232da17cd8a01ab5d898f678dc659999fa00265a813ca"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
