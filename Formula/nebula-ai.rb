class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.7/darwin-arm64/nebula-ai-v0.1.7-darwin-arm64.tar.gz"
      sha256 "8db08439b15872603f1709b4b9fe81a64a81f9b31f866129b1f554564e19f028"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.7/darwin-x64/nebula-ai-v0.1.7-darwin-x64.tar.gz"
      sha256 "e5ab1fb9158ae4708056f35faea96645fd52d414fd61ee7b4883c438acea51c0"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.7/linux-arm64/nebula-ai-v0.1.7-linux-arm64.tar.gz"
      sha256 "224871cdd4856af80de374b68549a6919dae6af6d05d4bfcc02164554b3277c8"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.7/linux-x64/nebula-ai-v0.1.7-linux-x64.tar.gz"
      sha256 "82f78f6659b7450f1a348f99852ca2bacf53d7b6a338e2a3ca5fad25b9251656"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
