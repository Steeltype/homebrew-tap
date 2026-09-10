cask "crocprobe" do
  version "1.0.8"
  sha256 "9aafc9ed85d33e36f47fca72721b058ff28ac426c8efd912b4766f36b93eb853"

  url "https://crocprobe.com/releases/CrocProbe-#{version}-arm64.dmg"
  name "CrocProbe"
  desc "Visual DevTools for real phones"
  homepage "https://crocprobe.com/"

  livecheck do
    url "https://crocprobe.com/updates.json"
    strategy :json do |json|
      json.dig("latest", "version")
    end
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "CrocProbe.app"

  zap trash: [
    "~/Library/Application Support/CrocProbe",
    "~/Library/Logs/CrocProbe",
    "~/Library/Preferences/com.steeltype.crocprobe.plist",
    "~/Library/Saved Application State/com.steeltype.crocprobe.savedState",
  ]
end
