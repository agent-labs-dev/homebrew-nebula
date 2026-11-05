class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.33"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.33/darwin-arm64/nebula-ai-v0.1.33-darwin-arm64.tar.gz"
    sha256 "af1d01a51959194038b170a9b83c6a9cf327b1e3f7550389b4c486872a61245f"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.33/linux-arm64/nebula-ai-v0.1.33-linux-arm64.tar.gz"
      sha256 "bb396bb25ca727cf7b01b54fc63de2c7e0f6d59db854027026894c5d8f634d81"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.33/linux-x64/nebula-ai-v0.1.33-linux-x64.tar.gz"
      sha256 "14242893f02087b8f1c0a73ab35f1432156907bad7e22022902454fb1d0f09b0"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
