cask "brewcad" do
  version "1.9.2"
  sha256 "d46c29255fce383a4b843cc55fe7b5c027554528fa5d7b9be658f438cfbf95e7"

  url "https://download.getapps.cafe/BrewCAD_#{version}_universal.dmg"
  name "BrewCAD"
  desc "Viewer and editor for DWG and DXF drawings"
  homepage "https://getapps.cafe/app/brewcad"

  livecheck do
    url "https://getapps.cafe/app/brewcad/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "BrewCAD.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.brewcad",
    "~/Library/Caches/cafe.getapps.brewcad",
    "~/Library/Preferences/cafe.getapps.brewcad.plist",
    "~/Library/Saved Application State/cafe.getapps.brewcad.savedState",
    "~/Library/WebKit/cafe.getapps.brewcad",
  ]
end
