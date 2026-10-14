cask "cellar" do
  version "1.7.2"
  sha256 "690a937fe5bf041cc4e76ef9f0189b98db4c071f682852ac210989759e189434"

  url "https://github.com/tuhage/Cellar/releases/download/v#{version}/Cellar-#{version}.dmg"
  name "Cellar"
  desc "Native GUI for managing Homebrew packages and services"
  homepage "https://github.com/tuhage/Cellar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Cellar.app"
  binary "#{appdir}/Cellar.app/Contents/Resources/cellar"

  uninstall quit: "com.tuhage.Cellar"

  zap trash: [
    "~/Library/Application Support/Cellar",
    "~/Library/Caches/com.tuhage.Cellar",
    "~/Library/Containers/com.tuhage.Cellar.FinderSync",
    "~/Library/Containers/com.tuhage.Cellar.Widget",
    "~/Library/Group Containers/23H73A78A7.com.tuhage.Cellar",
    "~/Library/HTTPStorages/com.tuhage.Cellar",
    "~/Library/HTTPStorages/com.tuhage.Cellar.binarycookies",
    "~/Library/Logs/Cellar",
    "~/Library/Preferences/com.tuhage.Cellar.plist",
  ]
end
