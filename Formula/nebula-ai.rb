class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.42"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://app-assets.nebula.gg/cli/stable/v0.1.42/darwin-arm64/nebula-ai-v0.1.42-darwin-arm64.tar.gz"
    sha256 "92e3c40b7f8de0bcc6b33cf370b9bb198f0c6892466f8171d176ebb190c5139f"
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.42/linux-arm64/nebula-ai-v0.1.42-linux-arm64.tar.gz"
      sha256 "02fd0ecf7cdac85df16270b185ad778717697fcd95f124d25de7b3b91419ceaa"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.42/linux-x64/nebula-ai-v0.1.42-linux-x64.tar.gz"
      sha256 "80a1a614a41cb4309bb5729b37d90584db0c91cc4a5f35b9f4429f0ea1a689a9"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
