cask "browseropener" do
  version "1.0.2"
  sha256 "1b7c4eb2098cb6a8a0eef1786a3a480cb07eccf96dd0b4a5dc7a15beb4e3deb7"

  url "https://github.com/blood72/BrowserOpener/releases/download/#{version}/BrowserOpener-#{version}.dmg"
  name "BrowserOpener"
  desc "Browser selector for opening links"
  homepage "https://github.com/blood72/BrowserOpener"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "BrowserOpener.app"

  caveats <<~EOS
    BrowserOpener is ad-hoc signed and is not notarized by Apple.
    macOS Gatekeeper may block launching the app after installation.
  EOS
end
