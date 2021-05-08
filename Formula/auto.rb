class Auto < Formula
  desc "Generate releases based on semantic version labels on pull requests."
  homepage "https://intuit.github.io/auto"
  url "https://github.com/intuit/auto/releases/download/v10.27.0/auto-macos.gz"
  version "v10.27.0"
  sha256 "4ef5f2b7dfffe089ab2d6f0acad6f5f7d74e5acf94119622c101f06464f2c598"

  def install
    libexec.install Dir["*"]
    bin.install libexec/"auto-macos"
    mv bin/"auto-macos", bin/"auto"
  end

  test do
    system bin/"auto", "--version"
  end
end