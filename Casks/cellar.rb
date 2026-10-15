cask "cellar" do
  version "1.7.3"
  sha256 "340956dba98faa9c7b038b8824fcaf24bb7dde34786d73a057cfe08f58cf0105"

  url "https://github.com/tuhage/Cellar/releases/download/v#{version}/Cellar-#{version}.dmg"
  name "Cellar"
  desc "Native GUI for managing Homebrew packages and services"
  homepage "https://github.com/tuhage/Cellar"

  livecheck do
    url :url
    strategy :github_latest
  end

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
