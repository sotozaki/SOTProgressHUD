Pod::Spec.new do |s|
  s.name             = "SOTProgressHUD"
  s.version          = "0.1.0"
  s.summary          = "SOTProgressHUD is a lightweight progress HUD for iOS app in Swift2.0."
  s.homepage         = "https://github.com/sotozaraki/SOTProgressHUD"
  # s.screenshots    = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "sotozakimasanori" => "sotozakimasanori@gmail.com" }
  s.source           = { :git => "https://github.com/sotozaraki/SOTProgressHUD.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/sotozaraki'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*.swift'
  s.resource_bundles = { 'SOTProgressHUDAssets' => ['Pod/Assets/**/*.png'] }
  
end
