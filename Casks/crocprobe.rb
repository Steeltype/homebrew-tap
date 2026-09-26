cask "crocprobe" do
  version "1.0.18"
  sha256 "e4308be54bbe0e3fc378a6346c7ec1f2f209d539942bc0f1e0733ab8e1bb4bfd"

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
