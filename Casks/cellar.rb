cask "cellar" do
  version "1.7.4"
  sha256 "c2a05f55ee2538c95256acb90ad48065ac001bc7f77f6a0e5d24102bfb1dbf44"

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
