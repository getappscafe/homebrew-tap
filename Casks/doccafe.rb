cask "doccafe" do
  version "2.8.4"
  sha256 "e2f36a6b38dcadb39ff5431840132ab3f3374a4e96bc919836c5360ee98bcdfa"

  url "https://download.getapps.cafe/DocCafe_#{version}_universal.dmg"
  name "DocCafe"
  desc "Word processor for DOCX documents"
  homepage "https://getapps.cafe/app/doccafe"

  livecheck do
    url "https://getapps.cafe/app/doccafe/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "DocCafe.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.doccafe",
    "~/Library/Caches/cafe.getapps.doccafe",
    "~/Library/Preferences/cafe.getapps.doccafe.plist",
    "~/Library/Saved Application State/cafe.getapps.doccafe.savedState",
    "~/Library/WebKit/cafe.getapps.doccafe",
  ]
end
