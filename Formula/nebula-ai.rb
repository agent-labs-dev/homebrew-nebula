class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.30"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.30/darwin-arm64/nebula-ai-v0.1.30-darwin-arm64.tar.gz"
    sha256 "3728ca3e7c5be6326f00e645b21d059ff81b77ce0ded9c3fc26dc0e62ebfc7b0"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.30/linux-arm64/nebula-ai-v0.1.30-linux-arm64.tar.gz"
      sha256 "01c04fe2baf432cb1e62a9b86b40187c0419bc385ba135f51b1135c96f47419d"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.30/linux-x64/nebula-ai-v0.1.30-linux-x64.tar.gz"
      sha256 "d5378adddcbc2d147b767c7b5dab5fb2664e61d6545baeafb42a4385cb19ea17"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
