class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/AutomaticCompiler/RemoveMacAI"
  url "https://github.com/AutomaticCompiler/RemoveMacAI/releases/download/v1.2.0/removemacai-darwin-arm64.tar.gz"
  sha256 "3884e0c46effeef9b2b303be2df9f3d48db33987b05cd441dbf9ca0a8fc8a012"
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
