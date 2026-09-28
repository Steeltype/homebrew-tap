cask "crocprobe" do
  version "1.0.19"
  sha256 "04651eb1d92b82a474cab44d76eebcddba7a41aa3ffd1ffbb66b4c1348602447"

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
