cask "resumeroast" do
  version "2.2.5"
  sha256 "ba9b055d204eca5d9ff1e51b5134bc66f3d3c35f900590db9186d9a5518d4302"

  url "https://download.getapps.cafe/ResumeRoast_#{version}_macos_universal.dmg"
  name "ResumeRoast"
  desc "Resume and CV builder with PDF export"
  homepage "https://getapps.cafe/app/resumeroast"

  livecheck do
    url "https://getapps.cafe/app/resumeroast/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "ResumeRoast.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.resumeroast",
    "~/Library/Caches/cafe.getapps.resumeroast",
    "~/Library/Caches/ResumeRoast",
    "~/Library/Preferences/cafe.getapps.resumeroast.plist",
    "~/Library/WebKit/cafe.getapps.resumeroast",
  ]
end
