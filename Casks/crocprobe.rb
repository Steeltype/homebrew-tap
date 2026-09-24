cask "crocprobe" do
  version "1.0.14"
  sha256 "c28ef46351a38e05b52031d87cbc1b5cabcff2d97a8ef4943bfc7ffd35410bdc"

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
