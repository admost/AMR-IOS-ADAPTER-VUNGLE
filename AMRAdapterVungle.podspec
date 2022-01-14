Pod::Spec.new do |s|
  s.name             = 'AMRAdapterVungle'
  s.version          = '6.10.5.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Vungle adapter for AMR SDK.'
  s.description      = 'AMR Vungle adapter allows publishers to mediate Vungle interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-VUNGLE.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.vendored_libraries = 'AMRAdapterVungle/Libs/libAMRAdapterVungle.a'
  s.dependency 'AMRSDK', '~> 1.5.4'
  s.dependency 'VungleSDK-iOS', '6.10.5'
end