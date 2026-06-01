# This file is updated by the quick-icons release workflow. DO NOT EDIT.
# The sha256 below is a placeholder until the first tagged release populates it.
cask "quick-icons" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/natikgadzhi/quick-icons/releases/download/v#{version}/QuickIcons-#{version}.dmg",
      verified: "github.com/natikgadzhi/quick-icons/"
  name "Quick Icons"
  desc "Compose and export macOS app icons from SwiftUI views"
  homepage "https://github.com/natikgadzhi/quick-icons"

  depends_on macos: ">= :tahoe"

  app "QuickIcons.app"

  zap trash: [
    "~/Library/Caches/respawn.QuickIcons",
    "~/Library/Preferences/respawn.QuickIcons.plist",
    "~/Library/Saved Application State/respawn.QuickIcons.savedState",
  ]
end
