class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  url "https://app-assets.nebula.gg/cli/stable/v0.1.47/darwin-arm64/nebula-ai-v0.1.47-darwin-arm64.tar.gz"
  version "0.1.47"
  sha256 "77b69ec0e250094f1115e9214a7052b988d18d4621ea088107722afaff12e919"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.47/linux-arm64/nebula-ai-v0.1.47-linux-arm64.tar.gz"
      sha256 "0df3c14d317d26b09fcb1868393951bc4488f97b62796433547d5ffa52bd5122"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.47/linux-x64/nebula-ai-v0.1.47-linux-x64.tar.gz"
      sha256 "9f442efbc280c0fbfde1caf7dec05a0f1adead5c015d6eee6fc117a7b113d524"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
