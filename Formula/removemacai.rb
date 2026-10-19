class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/AutomaticCompiler/RemoveMacAI"
  url "https://github.com/AutomaticCompiler/RemoveMacAI/releases/download/v1.1.3/removemacai-darwin-arm64.tar.gz"
  sha256 "c1c7d89ea720a0f79aef7eff154d493557c274d10d1544a90b9b4fe44bfb84a0"
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
