cask "fontsiphon" do
  version "1.7.1"
  sha256 "5577069d451134f788887b8240de54e0a6c2e1430da81f03821cfbba3657650c"

  url "https://download.getapps.cafe/FontSiphon_#{version}_universal.dmg"
  name "FontSiphon"
  desc "Preview installed fonts and turn families on or off"
  homepage "https://getapps.cafe/app/fontsiphon"

  livecheck do
    url "https://getapps.cafe/app/fontsiphon/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "FontSiphon.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.fontsiphon",
    "~/Library/Caches/cafe.getapps.fontsiphon",
    "~/Library/Preferences/cafe.getapps.fontsiphon.plist",
    "~/Library/Saved Application State/cafe.getapps.fontsiphon.savedState",
    "~/Library/WebKit/cafe.getapps.fontsiphon",
  ]
end
