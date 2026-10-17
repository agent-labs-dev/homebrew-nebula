class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.23/darwin-arm64/nebula-ai-v0.1.23-darwin-arm64.tar.gz"
      sha256 "c6c03a5bb27d80f501c32f279f2a3799a4da85eaffe09f5a9ddec345de259069"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.23/darwin-x64/nebula-ai-v0.1.23-darwin-x64.tar.gz"
      sha256 "e986d7b64385446e3b0370975823169c666204213468638169b4bd57b4782eeb"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.23/linux-arm64/nebula-ai-v0.1.23-linux-arm64.tar.gz"
      sha256 "f0ea71f1f25d601466bf3b2584f3576b23c46946d4b2bcbd230c4f824f7cd0f0"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.23/linux-x64/nebula-ai-v0.1.23-linux-x64.tar.gz"
      sha256 "e08941c23d4bbff3daa48e2174ba88b671cf1f32e1bedcaffc9cf8abfa2c1ca5"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
