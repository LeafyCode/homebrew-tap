# Written by the Kriyon release workflow (scripts/publish.mjs); edits here are replaced.
cask "kriyon" do
  version "0.14.0"
  sha256 "78ad4af25b08d74f2fadbfbcceea03c6d5cab49678568525f4c5553dbfe0574d"

  url "https://github.com/LeafyCode/kriyon/releases/download/v0.14.0/Kriyon_0.14.0_universal.dmg",
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
