class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.24/darwin-arm64/nebula-ai-v0.0.24-darwin-arm64.tar.gz"
      sha256 "c9bafa5c37a2dccdb9e5839086d87580312484dc9952c20156f9fb88afffdce7"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.24/darwin-x64/nebula-ai-v0.0.24-darwin-x64.tar.gz"
      sha256 "414b35e35c57299f3b690d2a55709175dc3b9650286dd34d98f21cc0db874049"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.24/linux-arm64/nebula-ai-v0.0.24-linux-arm64.tar.gz"
      sha256 "0653fc166c6d8ed6987672dd78d0ecd83547f25fa21125036eaff02da73e0cd8"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.24/linux-x64/nebula-ai-v0.0.24-linux-x64.tar.gz"
      sha256 "cc62bb5ab0fd3dea088b79b4b187e6fe0679ad347ccd6218d43df39ff2776884"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
