class Caspec < Formula
  desc "CLI tool for managing agent documentation from a single source"
  homepage "https://github.com/mtj0928/caspec"
  version "0.0.4"

  on_macos do
    url "https://github.com/mtj0928/caspec/releases/download/0.0.4/caspec-macos-universal.tar.gz"
    sha256 "42f21485eeaa15f6f30e4154379408a9842ad1ae0a14f530607d9b84b8016b60"
  end

  on_linux do
    url "https://github.com/mtj0928/caspec/releases/download/0.0.4/caspec-linux-x86_64.tar.gz"
    sha256 "9c437a8b046e46657834e5e3967644a985c0d1e1946676bffaef9efed59df198"
  end

  def install
    bin.install "caspec"
  end

  test do
    system "#{bin}/caspec", "--help"
  end
end
