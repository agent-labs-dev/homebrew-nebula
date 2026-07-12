class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.1/darwin-arm64/nebula-ai-v0.1.1-darwin-arm64.tar.gz"
      sha256 "7eb3c8a754fb3fc417b66ef56308e611da76a860b7cb084bab07602a3613b3d4"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.1/darwin-x64/nebula-ai-v0.1.1-darwin-x64.tar.gz"
      sha256 "7af5f012bd8314fc81dd79ab07a195f1d726a0e2fb9d03ed5310c91985fb50b4"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.1/linux-arm64/nebula-ai-v0.1.1-linux-arm64.tar.gz"
      sha256 "6ebbd60b8c73be377204ea6b786556a775a3251ec425af694ea6182ffe60aad5"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.1/linux-x64/nebula-ai-v0.1.1-linux-x64.tar.gz"
      sha256 "fa4ba7195f9b7f9876d01dc84ecbf7bf6210a4c30248a40b22e08ada1330f195"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
