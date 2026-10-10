class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.22/darwin-arm64/nebula-ai-v0.1.22-darwin-arm64.tar.gz"
      sha256 "c1f4d0453c54c37045c1b257d22410e34a1d50e762d399b4fbba2fbe1c206e8c"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.22/darwin-x64/nebula-ai-v0.1.22-darwin-x64.tar.gz"
      sha256 "1e41d17ffa13066a4d034d506079148f8ab79a256556d47725fbea7d0039c7c0"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.22/linux-arm64/nebula-ai-v0.1.22-linux-arm64.tar.gz"
      sha256 "2c7ab67f44c21bf1245544f9f81ea0aba11afd7a6108e98c6f06e6b58acf01fc"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.22/linux-x64/nebula-ai-v0.1.22-linux-x64.tar.gz"
      sha256 "ada24b731c7aa0cae77b06e07282f3699848bf0696786a87f5143eafc1b70853"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
