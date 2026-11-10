class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.40"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.40/darwin-arm64/nebula-ai-v0.1.40-darwin-arm64.tar.gz"
    sha256 "0e323fc125d6993edc46d71d983703d299a5b95f9aed819a0c937ec539ac4c86"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.40/linux-arm64/nebula-ai-v0.1.40-linux-arm64.tar.gz"
      sha256 "11d4c24cbbc554311bb9c69b8a0b738ed4e7018dc25021b3bf5c7f3cd4894778"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.40/linux-x64/nebula-ai-v0.1.40-linux-x64.tar.gz"
      sha256 "392738188f3ba0d4039642e2fc9e8072cbe9660342cee990e5d7e44bbcde829c"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
