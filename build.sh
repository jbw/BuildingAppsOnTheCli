rm -rf builds
APP_VERSION=2.0.0
sed -i .bak 's/CURRENT_PROJECT_VERSION.*;/CURRENT_PROJECT_VERSION = '$APP_VERSION';/g' BuildingAppsOnTheCli.xcodeproj/project.pbxproj
xcodebuild clean archive -scheme BuildingAppsOnTheCli -configuration Release -archivePath builds/archives/BuildingAppsOnTheCli.xcarchive
xcodebuild -exportArchive -archivePath builds/archives/BuildingAppsOnTheCli.xcarchive -exportPath builds/exports/BuildingAppsOnTheCli -exportOptionsPlist BuildingAppsOnTheCli/Info.plist
