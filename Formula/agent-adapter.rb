class AgentAdapter < Formula
  desc "CLI tool for managing agent documentation from a single source"
  homepage "https://github.com/mtj0928/agent-adapter"
  version "0.0.6"

  on_macos do
    url "https://github.com/mtj0928/agent-adapter/releases/download/0.0.6/agent-adapter-macos-universal.tar.gz"
    sha256 "fffd5772954f4a7ac88e5758da5a0efd609fbf8fa37775c18c508c4af00e862e"
  end

  on_linux do
    url "https://github.com/mtj0928/agent-adapter/releases/download/0.0.6/agent-adapter-linux-x86_64.tar.gz"
    sha256 "aa00d84ee88f9e1653300b0e15f804eaa5b5dd742ef21a10ec3c3047fc418d06"
  end

  def install
    bin.install "agent-adapter"
  end

  test do
    system "#{bin}/agent-adapter", "--help"
  end
end
