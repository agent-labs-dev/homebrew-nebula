class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.13/darwin-arm64/nebula-ai-v0.1.13-darwin-arm64.tar.gz"
      sha256 "83f9949fae347cf93cf40bf6d58a537416d8fa4bf7990883d9119c47dc4922a2"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.13/darwin-x64/nebula-ai-v0.1.13-darwin-x64.tar.gz"
      sha256 "889e9d1402e981b48e922e564df8d79323f4a9448fc4d8297fda4fd6ef559963"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.13/linux-arm64/nebula-ai-v0.1.13-linux-arm64.tar.gz"
      sha256 "0abf6ffc2f3347b52ee5cbee1ca872fafe593a112fdc5bcd7c565e1180415b01"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.13/linux-x64/nebula-ai-v0.1.13-linux-x64.tar.gz"
      sha256 "641118fcd5b21a1f6636a6c36aabb1a920003990d79d5e417a2c533a70d54cca"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
