cask "designbrew" do
  version "1.9.0"
  sha256 "b2d4e411e1340bfda8a51449b3dbc000840fb8fdbe29fa5cf0bd6e482656e013"

  url "https://download.getapps.cafe/DesignBrew_#{version}_universal.dmg"
  name "DesignBrew"
  desc "Offline design and technical drafting tool"
  homepage "https://getapps.cafe/app/designbrew"

  livecheck do
    url "https://getapps.cafe/app/designbrew/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "DesignBrew.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.designbrew",
    "~/Library/Caches/cafe.getapps.designbrew",
    "~/Library/Preferences/cafe.getapps.designbrew.plist",
    "~/Library/Saved Application State/cafe.getapps.designbrew.savedState",
    "~/Library/WebKit/cafe.getapps.designbrew",
  ]
end
