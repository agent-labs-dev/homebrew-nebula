class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-cli"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.17/darwin-arm64/nebula-ai-v0.0.17-darwin-arm64.tar.gz"
      sha256 "646834ac14c62f8882c74a7b2f5a88cd16500851e3832211e7357fcb1db56bdf"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.17/darwin-x64/nebula-ai-v0.0.17-darwin-x64.tar.gz"
      sha256 "7056704869b007cf1ef2a47b2f18c91d7bebea688f570d93dd36087965366553"
    end
  end

  on_linux do
    on_arm do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.17/linux-arm64/nebula-ai-v0.0.17-linux-arm64.tar.gz"
      sha256 "f89147b4741df18139d2322df5740e1670e7553c6927d5f26a02b972e0ed1623"
    end
    on_intel do
      url "https://cli-assets.nebula-dev.ai/production/v0.0.17/linux-x64/nebula-ai-v0.0.17-linux-x64.tar.gz"
      sha256 "ad413b7ae9ffa5f885a5532007dc286473f124e92a995e61903af98f5bcfac18"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
