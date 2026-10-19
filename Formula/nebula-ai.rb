class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.24/darwin-arm64/nebula-ai-v0.1.24-darwin-arm64.tar.gz"
      sha256 "7643c5824343c33ef665662b11e215b6b22b726ca0d4df29d0bb01bea6a0a893"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.24/darwin-x64/nebula-ai-v0.1.24-darwin-x64.tar.gz"
      sha256 "a4f660d8d413bde7be870d60f7e82ed601887f6264cb227f4ed36c577b2eeba6"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.24/linux-arm64/nebula-ai-v0.1.24-linux-arm64.tar.gz"
      sha256 "19f3c832b3efaa1ec1b06fd6f5d6f10f83b1ce006a162308ef67739b23908a49"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.24/linux-x64/nebula-ai-v0.1.24-linux-x64.tar.gz"
      sha256 "f3911b54beebb33ad4c3c7b06a0db47b1c9d50332657967cf27aced3b5779cae"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
