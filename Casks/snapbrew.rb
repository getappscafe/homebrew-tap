cask "snapbrew" do
  version "1.5.1"
  sha256 "13ee6da3c7320832f957372a659e354efd7e93885d96abf7d83832268cc4db2d"

  url "https://download.getapps.cafe/SnapBrew_#{version}_universal.dmg"
  name "SnapBrew"
  desc "Snap windows into place by drag, shortcut or menu bar"
  homepage "https://getapps.cafe/app/snapbrew"

  livecheck do
    url "https://getapps.cafe/app/snapbrew/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "SnapBrew.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.snapbrew",
    "~/Library/Caches/cafe.getapps.snapbrew",
    "~/Library/Caches/SnapBrew",
    "~/Library/Preferences/cafe.getapps.snapbrew.plist",
    "~/Library/WebKit/cafe.getapps.snapbrew",
  ]
end
