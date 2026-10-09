cask "claude-seat-switcher" do
  version "0.1.7"
  sha256 "e173eed75ca1a831168b7369ea378866f2cfe7ad76e4b26e6cf74af8a90762c2"

  url "https://github.com/burakatmaca7/claude-seat-switcher/releases/download/v#{version}/Claude-Seat-Switcher-v#{version}.zip"
  name "Claude Seat Switcher"
  desc "Menu bar usage and window switching for multiple Claude accounts and Team seats"
  homepage "https://github.com/burakatmaca7/claude-seat-switcher"

  depends_on macos: :sonoma

  app "Claude Seat Switcher.app"

  zap trash: [
    "~/Library/Application Support/ClaudeSeatSwitcher",
    "~/Library/Preferences/io.github.burakatmaca7.claude-seat-switcher.plist",
  ]

  caveats <<~EOS
    This app is not notarized by Apple. On first launch macOS will say it
    could not verify it: open System Settings → Privacy & Security and click
    "Open Anyway" once.
  EOS
end
