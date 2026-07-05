class NebulaAi < Formula
  desc "CLI/TUI for the nebula.gg AI task orchestration platform"
  homepage "https://github.com/agent-labs-dev/nebula-desktop"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.0/darwin-arm64/nebula-ai-v0.1.0-darwin-arm64.tar.gz"
      sha256 "20e38bec9a81f6906a96a4ea977ff8075419cb3a2df68dc1c18f5cd70ca866d3"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.0/darwin-x64/nebula-ai-v0.1.0-darwin-x64.tar.gz"
      sha256 "d67f29aba78d0e6e95f07fb5f1fabd6f65245b08b653894d9d5b20363ead8b97"
    end
  end

  on_linux do
    on_arm do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.0/linux-arm64/nebula-ai-v0.1.0-linux-arm64.tar.gz"
      sha256 "9ff630970252f21ba6a6b1a8d19755843d5efb062c30db1579614af5b2c6f7d9"
    end
    on_intel do
      url "https://app-assets.nebula.gg/cli/stable/v0.1.0/linux-x64/nebula-ai-v0.1.0-linux-x64.tar.gz"
      sha256 "83c571504502fa207ea842d164324e648dba7d58db5b225f2340cb2f90e44308"
    end
  end

  def install
    bin.install "nebula-ai"
  end

  test do
    assert_match "nebula-ai", shell_output("#{bin}/nebula-ai --help")
  end
end
