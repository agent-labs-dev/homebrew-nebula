class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.28"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.28/darwin-arm64/nebula-ai-v0.1.28-darwin-arm64.tar.gz"
    sha256 "427d35be591f298da4b79c94cffccf15af370d3d4f8dd24862406d571e3cf60f"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.28/linux-arm64/nebula-ai-v0.1.28-linux-arm64.tar.gz"
      sha256 "83069c4453e0da94a62d62ba58785ec0aa3770f35a383c3dad7b82b318b2e6c3"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.28/linux-x64/nebula-ai-v0.1.28-linux-x64.tar.gz"
      sha256 "1ec7263c414d68728fd898488417e41ace07535ea7e1b7252d8d684ab02da125"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
