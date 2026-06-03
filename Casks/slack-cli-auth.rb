cask "slack-cli-auth" do
  version "0.2.0"
  sha256 "41de10fc000b974c8965ff760d81befeb88d6a6927093a81b83dff0e4abbf5fd"

  url "https://github.com/natikgadzhi/slack-cli-auth/releases/download/v#{version}/SlackAuth-#{version}.dmg",
      verified: "github.com/natikgadzhi/slack-cli-auth/"
  name "Slack CLI Helper"
  desc "Captures Slack xoxc/xoxd session tokens into the macOS Keychain for slack-cli"
  homepage "https://github.com/natikgadzhi/slack-cli-auth"

  depends_on macos: ">= :sequoia"

  app "Slack Auth.app"

  zap trash: [
    "~/Library/Caches/io.respawn.SlackAuth",
    "~/Library/Preferences/io.respawn.SlackAuth.plist",
    "~/Library/Saved Application State/io.respawn.SlackAuth.savedState",
  ]
end
