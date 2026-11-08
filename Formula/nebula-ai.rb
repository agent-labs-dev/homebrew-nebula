class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.37"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.37/darwin-arm64/nebula-ai-v0.1.37-darwin-arm64.tar.gz"
    sha256 "97bd909d35027efd6c08493c3d8514a614a220a6beb9e331cdfc2491ac4565c4"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.37/linux-arm64/nebula-ai-v0.1.37-linux-arm64.tar.gz"
      sha256 "e5ca0026b864401ab39e2aa050560ef318a4c61c548e4ff2b53798a74226353d"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.37/linux-x64/nebula-ai-v0.1.37-linux-x64.tar.gz"
      sha256 "a0bee62256836d7e2a441158c866f0d480021d01e09bae8b36420e8b57387a86"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
