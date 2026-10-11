class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/AutomaticCompiler/RemoveMacAI"
  url "https://github.com/AutomaticCompiler/RemoveMacAI/releases/download/v1.0.3/removemacai-darwin-arm64.tar.gz"
  sha256 "842f8679c086de1ab5c469d4ef6adf1eea5d08c3bdf2d8a6be378e4cab34d95b"
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
