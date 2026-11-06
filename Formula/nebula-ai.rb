class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.34"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.34/darwin-arm64/nebula-ai-v0.1.34-darwin-arm64.tar.gz"
    sha256 "e1073346d34f9562187a92a9bbcf14fb84296e0a42f4175c597c3dab23b8240e"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.34/linux-arm64/nebula-ai-v0.1.34-linux-arm64.tar.gz"
      sha256 "fa3d659ca9bb2511a64d539d73f8a8be1c560f0b86d56472c9895f750b1c86ce"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.34/linux-x64/nebula-ai-v0.1.34-linux-x64.tar.gz"
      sha256 "4fbb37180f5affe61d976f2e12388119375e4be95f5c4e5e7ee3f72320d01c8b"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
