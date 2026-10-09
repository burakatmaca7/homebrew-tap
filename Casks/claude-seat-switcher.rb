cask "claude-seat-switcher" do
  version "0.1.5"
  sha256 "095faa43bc82e75c8bfd6744c7b491b879a0640a59d9785354034bfefb850524"

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
