class AgentAdapter < Formula
  desc "CLI tool for managing agent documentation from a single source"
  homepage "https://github.com/mtj0928/agent-adapter"
  version "0.0.7"

  on_macos do
    url "https://github.com/mtj0928/agent-adapter/releases/download/0.0.7/agent-adapter-macos-universal.tar.gz"
    sha256 "de4d4b598735d3eea11d1b71a0a14973ed172ff2f58e1657ed9d13fdde74b269"
  end

  on_linux do
    url "https://github.com/mtj0928/agent-adapter/releases/download/0.0.7/agent-adapter-linux-x86_64.tar.gz"
    sha256 "66803b37a55ad58a0751d1cf4b6ddd6cb933e12bfc8ff28aa699f9f36e0430ff"
  end

  def install
    bin.install "agent-adapter"
  end

  test do
    system "#{bin}/agent-adapter", "--help"
  end
end
