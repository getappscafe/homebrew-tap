cask "cremastudio" do
  version "1.8.3"
  sha256 "aa0b8272a8a18e6aa4dffbfede60c730ac3554fa372892df7a48cabf2ac017fc"

  url "https://download.getapps.cafe/CremaStudio_#{version}_universal.dmg"
  name "CremaStudio"
  desc "Photo editor with layers, masks and filters"
  homepage "https://getapps.cafe/app/cremastudio"

  livecheck do
    url "https://getapps.cafe/app/cremastudio/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "CremaStudio.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.cremastudio",
    "~/Library/Caches/cafe.getapps.cremastudio",
    "~/Library/Caches/CremaStudio",
    "~/Library/Preferences/cafe.getapps.cremastudio.plist",
    "~/Library/WebKit/cafe.getapps.cremastudio",
  ]
end
