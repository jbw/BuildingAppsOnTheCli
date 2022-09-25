rm -rf builds
xcodebuild clean archive -scheme BuildingAppsOnTheCli -configuration Release -archivePath builds/archives/BuildingAppsOnTheCli.xcarchive
xcodebuild -exportArchive -archivePath builds/archives/BuildingAppsOnTheCli.xcarchive -exportPath builds/exports/BuildingAppsOnTheCli -exportOptionsPlist BuildingAppsOnTheCli/Info.plist
