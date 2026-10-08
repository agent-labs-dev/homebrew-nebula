class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.19/darwin-arm64/nebula-ai-v0.1.19-darwin-arm64.tar.gz"
      sha256 "a5d28c2a8bb3073ca15d595c7987ae253252076ca6131d0651fe7847cda02b2a"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.19/darwin-x64/nebula-ai-v0.1.19-darwin-x64.tar.gz"
      sha256 "a31321a8071200416394f3db341965949701653cdc9efdde47100fb2410efc1e"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.19/linux-arm64/nebula-ai-v0.1.19-linux-arm64.tar.gz"
      sha256 "f9ad337d150c509012cdff021609392e4b23949992012ace3497d24f4e229d84"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.19/linux-x64/nebula-ai-v0.1.19-linux-x64.tar.gz"
      sha256 "075fd14432df653696b4468533a1e3f17a1aedf46989961b04c65fc9f7d6d752"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
