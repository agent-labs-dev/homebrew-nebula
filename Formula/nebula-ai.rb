class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.21/darwin-arm64/nebula-ai-v0.1.21-darwin-arm64.tar.gz"
      sha256 "801c129d0a629dcc50fbe86c5461f2fa161906a001789cae8b9916a959789f27"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.21/darwin-x64/nebula-ai-v0.1.21-darwin-x64.tar.gz"
      sha256 "5780e20eacb10cdbf2117ab5e44c55f6597744748ec2ce99afa334fe539193bf"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.21/linux-arm64/nebula-ai-v0.1.21-linux-arm64.tar.gz"
      sha256 "3d15172f17b5b9b67ce89ba041432c252803f1b397f591f43e0caf64baae9d89"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.21/linux-x64/nebula-ai-v0.1.21-linux-x64.tar.gz"
      sha256 "3c00004148b7040af76f236c60fb2375d37bb96baf83fa6e679b95915157873a"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
