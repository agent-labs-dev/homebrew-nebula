class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.26"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.26/darwin-arm64/nebula-ai-v0.1.26-darwin-arm64.tar.gz"
    sha256 "ccdedee5e201c2a7eeb3c89f6144041ab96d84449d048720bd3230561e08b640"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.26/linux-arm64/nebula-ai-v0.1.26-linux-arm64.tar.gz"
      sha256 "61bc86bffd7d095f38c508bc1a8680f77d075a112fe9735641a4169a53c6faed"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.26/linux-x64/nebula-ai-v0.1.26-linux-x64.tar.gz"
      sha256 "cb8af547b046555b72fe4a4d72f257154af973896026d08e57485fc756b6e8a4"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
