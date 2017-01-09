xcodebuild -sdk iphoneos -target HHH -configuration Release
xcodebuild archive -project HHH.xcodeproj -scheme HHH -archivePath build/HHH.xcarchive
xcodebuild -exportArchive -archivePath build/HHH.xcarchive -exportPath build/HHH -exportFormat ipa
