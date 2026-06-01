# This file is updated by the amazon-order-export release workflow. DO NOT EDIT.
cask "amazon-order-export" do
  version "0.1.4"
  sha256 "3b4435206edb15e15f4a9464c937f96977bbb978990d5e19502b2f9a94d4a957"

  url "https://github.com/natikgadzhi/amazon-order-export/releases/download/v#{version}/AmazonOrderExport-#{version}.dmg",
      verified: "github.com/natikgadzhi/amazon-order-export/"
  name "Amazon Order Export"
  desc "Exports your own Amazon order and transaction history to CSV"
  homepage "https://github.com/natikgadzhi/amazon-order-export"

  depends_on macos: ">= :tahoe"

  app "Amazon Order Export.app"

  zap trash: [
    "~/Library/Caches/io.respawn.AmazonOrderExport",
    "~/Library/Preferences/io.respawn.AmazonOrderExport.plist",
    "~/Library/Saved Application State/io.respawn.AmazonOrderExport.savedState",
  ]
end
