cask "steepjournal" do
  version "1.9.0"
  sha256 "1816cf39afcb8fee6dc1243cb675984609dc45b375f828d3b92030628e6d5c3b"

  url "https://download.getapps.cafe/SteepJournal_#{version}_universal.dmg"
  name "SteepJournal"
  desc "Private diary encrypted with your own password"
  homepage "https://getapps.cafe/app/steepjournal"

  livecheck do
    url "https://getapps.cafe/app/steepjournal/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "SteepJournal.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.steepjournal",
    "~/Library/Caches/cafe.getapps.steepjournal",
    "~/Library/Caches/SteepJournal",
    "~/Library/Preferences/cafe.getapps.steepjournal.plist",
    "~/Library/WebKit/cafe.getapps.steepjournal",
  ]
end
