#
# Be sure to run `pod lib lint AdvertileSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AdvertileSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AdvertileSDK.'


  s.description      = <<-DESC
TODO: Library to track events in some libraries and open external urls.
                       DESC

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/AdvertileSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'javier.peigneux' => 'javier.peigneux@navilo.es' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/AdvertileSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AdvertileSDK/Classes/**/*'

  # s.resource_bundles = {
  #   'AdvertileSDK' => ['AdvertileSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SwrveSDK'

end
