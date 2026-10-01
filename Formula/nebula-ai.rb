class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.12/darwin-arm64/nebula-ai-v0.1.12-darwin-arm64.tar.gz"
      sha256 "576b413a031cbe2654c20e215df3bf5063523ba6839009baf323117b1ff8543c"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.12/darwin-x64/nebula-ai-v0.1.12-darwin-x64.tar.gz"
      sha256 "795e4f7d302be43b4402be86065a615976e906c1cf65501ce6ef75572c07ebd8"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.12/linux-arm64/nebula-ai-v0.1.12-linux-arm64.tar.gz"
      sha256 "f84333a33c386755a5d307ee0acde2ec8c89bf6b7a2288a47d1416715e6ef8f4"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.12/linux-x64/nebula-ai-v0.1.12-linux-x64.tar.gz"
      sha256 "16cabb120615200f960099cdbaacc5e96f95ca111d5723886da832b706e5e048"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
