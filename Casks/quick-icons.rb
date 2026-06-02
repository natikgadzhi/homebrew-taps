# This file is updated by the quick-icons release workflow. DO NOT EDIT.
cask "quick-icons" do
  version "0.1.0"
  sha256 "51073990a61b96f631836eab1f3de265f2c762bbac0ed3c404480d85bde717c8"

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
