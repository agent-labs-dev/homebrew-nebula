class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.19/darwin-arm64/nebula-ai-v0.0.19-darwin-arm64.tar.gz"
      sha256 "dd9dbdd153b796477ba2e1e2b17dbf46d8a086e67e564bfeb3730eebb7d67688"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.19/darwin-x64/nebula-ai-v0.0.19-darwin-x64.tar.gz"
      sha256 "83d6e25b1e835edbbdccd6fbb33efb2c57f853b99b260c98661e288313a96d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.19/linux-arm64/nebula-ai-v0.0.19-linux-arm64.tar.gz"
      sha256 "9d88f00c4fc9457fb870f50633e06225fc5300a73612228dbc719b79f835ca04"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.0.19/linux-x64/nebula-ai-v0.0.19-linux-x64.tar.gz"
      sha256 "549976390cbc77a8b8f536dc9777d3df52e11f3f9b08453a743b938c957f7449"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
