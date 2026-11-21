cask "top75" do
  version "0.13.0"
  sha256 "e4ed6e77d4ba69f4a870bcb239b7bc3824688a3ac0c9e49f5b4f095898c0c76d"

  url "https://github.com/kreativecenter/top75-macos/releases/download/v#{version}/TOP75-macOS.dmg"
  name "TOP75 for macOS"
  desc "Configurator for the Darmoshark TOP75 keyboard"
  homepage "https://github.com/kreativecenter/top75-macos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "TOP75.app"

  # ~/Library/Application Support/TOP75 stays: Claude Code's status line may run a script from it.
  zap trash: [
    "~/Library/Caches/center.kreative.top75",
    "~/Library/HTTPStorages/center.kreative.top75",
    "~/Library/Preferences/center.kreative.top75.plist",
    "~/Library/Saved Application State/center.kreative.top75.savedState",
  ]
end
