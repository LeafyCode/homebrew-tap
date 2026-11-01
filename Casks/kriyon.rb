# Written by the Kriyon release workflow (scripts/publish.mjs); edits here are replaced.
cask "kriyon" do
  version "0.15.0"
  sha256 "4fdc3aa115a4affeca7a039fb966c17595e4c69708bb4d0cfa647d1b20b6e04f"

  url "https://github.com/LeafyCode/kriyon/releases/download/v0.15.0/Kriyon_0.15.0_universal.dmg",
      verified: "github.com/LeafyCode/kriyon/"
  name "Kriyon"
  desc "Desktop app for the Claude Code CLI, with a Changes view beside it"
  homepage "https://kriyonapp.com/"

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
