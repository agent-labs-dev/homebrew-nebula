class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.39"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.39/darwin-arm64/nebula-ai-v0.1.39-darwin-arm64.tar.gz"
    sha256 "1066522f46e970689f5e71432bdb7ce6e9cf00fc7bb9dcf29b19dcde8c6137e8"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.39/linux-arm64/nebula-ai-v0.1.39-linux-arm64.tar.gz"
      sha256 "d8d58d27419a20b4856f5dc8684773172f8f0df33dc8b96989c0b7f94c27c817"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.39/linux-x64/nebula-ai-v0.1.39-linux-x64.tar.gz"
      sha256 "e7f7606c82c5f6ce2655d720fed24136fe41e447c327234b2e642331ea169b26"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
