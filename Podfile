platform :ios, '12.4'
swift_version = '5.0'

# Podライブラリのwarning を抑制する
inhibit_all_warnings!

target 'HelloSnapshotTests' do
  use_frameworks!
  inherit! :search_paths 

  pod 'iOSSnapshotTestCase', '~> 6.0.0'  # swift 5 をサポートするのはこのバージョンまで
end
