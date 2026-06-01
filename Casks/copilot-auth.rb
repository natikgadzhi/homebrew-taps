# This file is updated by the copilot-auth release workflow. DO NOT EDIT.
cask "copilot-auth" do
  version "0.1.1"
  sha256 "123215a3e395197ed0d7caa8429c79a4e946510df29a783605c142b45c102799"

  url "https://github.com/natikgadzhi/copilot-auth/releases/download/v#{version}/CopilotAuth-#{version}.dmg",
      verified: "github.com/natikgadzhi/copilot-auth/"
  name "Copilot Auth"
  desc "Captures Copilot Money session secrets into the macOS Keychain"
  homepage "https://github.com/natikgadzhi/copilot-auth"

  depends_on macos: ">= :sonoma"

  app "Copilot Auth.app"
  # Mirror `make install`: put the in-bundle binary on PATH as `copilot-auth`
  # so `copilot-auth authenticate` / `copilot-auth check` work from any shell.
  binary "#{appdir}/Copilot Auth.app/Contents/MacOS/Copilot Auth", target: "copilot-auth"

  zap trash: [
    "~/Library/Caches/io.respawn.CopilotAuth",
    "~/Library/Preferences/io.respawn.CopilotAuth.plist",
    "~/Library/Saved Application State/io.respawn.CopilotAuth.savedState",
  ]
end
