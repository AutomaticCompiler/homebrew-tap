class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/AutomaticCompiler/RemoveMacAI"
  url "https://github.com/AutomaticCompiler/RemoveMacAI/releases/download/v1.2.2/removemacai-darwin-arm64.tar.gz"
  sha256 "b96c96cf6402417b408fa9af77f328b092ff667e5127c6e5082f375c2aa25b6d"
  license "MIT"
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "removemacai"
    prefix.install "THIRD-PARTY-NOTICES.md"
  end

  test do
    system bin/"removemacai", "selftest"
  end
end
