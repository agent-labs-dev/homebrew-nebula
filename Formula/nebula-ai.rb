class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.25/darwin-arm64/nebula-ai-v0.0.25-darwin-arm64.tar.gz"
      sha256 "6af51d43745cded568cbde0a41d9eec912331e502e749b8c1b98808c82efe265"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.25/darwin-x64/nebula-ai-v0.0.25-darwin-x64.tar.gz"
      sha256 "e0a51a8720a41316f91bdd7d488452c21c8d351145ac7c0400a4bf3654cf5f22"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.25/linux-arm64/nebula-ai-v0.0.25-linux-arm64.tar.gz"
      sha256 "adacff437cb4acb99f0f4578344af5b0ee00d5df139cca19b4f7a22cd0ec4a69"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.25/linux-x64/nebula-ai-v0.0.25-linux-x64.tar.gz"
      sha256 "140ca58cef4b3523fc3054081bad962fe62277d51d6a70964a793e72b1cef89c"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
