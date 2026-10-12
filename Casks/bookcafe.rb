cask "bookcafe" do
  version "1.8.3"
  sha256 "bdbfd45250cfcc8c42356620c7cdcab14425144a1080b815f6fe5df49d82bee9"

  url "https://download.getapps.cafe/BookCafe_#{version}_universal.dmg"
  name "BookCafe"
  desc "Write books in chapters and export to web, PDF or EPUB"
  homepage "https://getapps.cafe/app/bookcafe"

  livecheck do
    url "https://getapps.cafe/app/bookcafe/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "BookCafe.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.bookcafe",
    "~/Library/Caches/cafe.getapps.bookcafe",
    "~/Library/Preferences/cafe.getapps.bookcafe.plist",
    "~/Library/Saved Application State/cafe.getapps.bookcafe.savedState",
    "~/Library/WebKit/cafe.getapps.bookcafe",
  ]
end
