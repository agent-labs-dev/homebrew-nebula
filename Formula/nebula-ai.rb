class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.16/darwin-arm64/nebula-ai-v0.1.16-darwin-arm64.tar.gz"
      sha256 "a5d5a103c04d7d7fa8d4cc21f82d4def107d365307bd1ea7c3c2cf6574457ab4"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.16/darwin-x64/nebula-ai-v0.1.16-darwin-x64.tar.gz"
      sha256 "91f5e04d6089c7b06337ad644d49cc20a395895446fbf446e4dd409829e55bf5"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.16/linux-arm64/nebula-ai-v0.1.16-linux-arm64.tar.gz"
      sha256 "961edf394c0430aa6f4a4df06b939de0ba17eaa0a633cf96cfa59163748bdaa4"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.16/linux-x64/nebula-ai-v0.1.16-linux-x64.tar.gz"
      sha256 "ce744c49c69f528f33bc64cafcc35078d99e446c1f52a33052193073cd6c4bde"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
