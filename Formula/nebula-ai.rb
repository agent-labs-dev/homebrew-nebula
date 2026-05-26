class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.22/darwin-arm64/nebula-ai-v0.0.22-darwin-arm64.tar.gz"
      sha256 "9c0102f88485300d383c0b6023156868528936056c2ef2c3d83f70296e0f1495"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.22/darwin-x64/nebula-ai-v0.0.22-darwin-x64.tar.gz"
      sha256 "c1b9952240170b87a415b046d4b55bd8e66cd23432539b6a3f7ec9289215ebec"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.22/linux-arm64/nebula-ai-v0.0.22-linux-arm64.tar.gz"
      sha256 "0d74f0388618a62dcc84f248f6e71d92b7f4490fa6cd0e18888c533d6739b6d2"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.22/linux-x64/nebula-ai-v0.0.22-linux-x64.tar.gz"
      sha256 "ceb77eea046ff27fc896eb28c15f923591645fcb890debccd724d22783f84e21"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
