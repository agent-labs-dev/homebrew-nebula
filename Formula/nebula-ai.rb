class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.29"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.29/darwin-arm64/nebula-ai-v0.1.29-darwin-arm64.tar.gz"
    sha256 "35d1c65a675730efe3abdb7bd5a056b25972d3873080f32aab64159d531e724f"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.29/linux-arm64/nebula-ai-v0.1.29-linux-arm64.tar.gz"
      sha256 "cdc593010d300c5e5c8bf62daef7b36a2140c78a69584d0cb4c07875c498ff1f"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.29/linux-x64/nebula-ai-v0.1.29-linux-x64.tar.gz"
      sha256 "a191bb96d4fce7043a3934f7848ab6e2fdae6e92866b4f25c544711f57fd0429"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
