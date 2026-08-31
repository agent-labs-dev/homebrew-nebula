class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.9/darwin-arm64/nebula-ai-v0.1.9-darwin-arm64.tar.gz"
      sha256 "cdfa492dd72b6bdf79c570a30b033b434e7f6f5166dfc6720772c48849109f69"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.9/darwin-x64/nebula-ai-v0.1.9-darwin-x64.tar.gz"
      sha256 "9a295e5c2316ef0e6f01e24398cea57dd8fa915146fe929a3e58f022d55474fb"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.9/linux-arm64/nebula-ai-v0.1.9-linux-arm64.tar.gz"
      sha256 "7d8f33e2d471c775ed259e5981fc7cf8ed855e96ff4fb52b95f86a806db3316d"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.9/linux-x64/nebula-ai-v0.1.9-linux-x64.tar.gz"
      sha256 "57e2f96686795a7d52fab44dd001ba260fc590a4062e3ac1c26371a9d6557df4"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
