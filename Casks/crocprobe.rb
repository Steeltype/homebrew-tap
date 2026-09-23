cask "crocprobe" do
  version "1.0.10"
  sha256 "c4015f8f7d307fd054a74d0b144ff5df89da8fb944c9fbf9de77839ff2523f86"

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
