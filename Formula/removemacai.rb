class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/AutomaticCompiler/RemoveMacAI"
  url "https://github.com/AutomaticCompiler/RemoveMacAI/releases/download/v1.1.4/removemacai-darwin-arm64.tar.gz"
  sha256 "f9384c26083f277943d270b6ec8ef4dd21def8638fe1009bb9c33c5bda771515"
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
