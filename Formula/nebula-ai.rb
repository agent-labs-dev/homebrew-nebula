class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.14/darwin-arm64/nebula-ai-v0.1.14-darwin-arm64.tar.gz"
      sha256 "6cc21480f00544f8eaf678d51a117b1330792cc3a952ba7512418b2abe31e71e"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.14/darwin-x64/nebula-ai-v0.1.14-darwin-x64.tar.gz"
      sha256 "d8cef07ca4fdee29028dba7515ec0daedbfb56902cac6eec7b8767734c0ff74c"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.14/linux-arm64/nebula-ai-v0.1.14-linux-arm64.tar.gz"
      sha256 "bb8d427c272936f6c8b33cce35809960d9868829482c9ff9d2b6d772eed6874f"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.14/linux-x64/nebula-ai-v0.1.14-linux-x64.tar.gz"
      sha256 "ff327e98606126e641878be5be6f9b601be3cc2307a8b8172165dd1dab9affd7"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
