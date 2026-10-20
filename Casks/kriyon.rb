# Written by the Kriyon release workflow (scripts/publish.mjs); edits here are replaced.
cask "kriyon" do
  version "0.13.0"
  sha256 "a1d901a8c6d8b9be7402feb3278258a07d3d7b9b328954fb3e3adba30e78e97e"

  url "https://github.com/LeafyCode/kriyon/releases/download/v0.13.0/Kriyon_0.13.0_universal.dmg",
      verified: "github.com/LeafyCode/kriyon/"
  name "Kriyon"
  desc "Desktop app for the Claude Code CLI, with a Changes view beside it"
  homepage "https://kriyon.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Kriyon.app"

  zap trash: [
    "~/Library/Application Support/com.leafycode.kriyon",
    "~/Library/Caches/com.leafycode.kriyon",
    "~/Library/Preferences/com.leafycode.kriyon.plist",
    "~/Library/Saved Application State/com.leafycode.kriyon.savedState",
    "~/Library/WebKit/com.leafycode.kriyon",
  ]
end
