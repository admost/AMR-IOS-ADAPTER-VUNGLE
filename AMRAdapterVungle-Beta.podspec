Pod::Spec.new do |s|
  s.name             = 'AMRAdapterVungle-Beta'
  s.version          = '7.3.0.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
                            Copyright 2016
                            Admost Mediation Limited.
                            LICENSE
                            }
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Vungle adapter for AMR SDK.'
  s.description      = 'This pod depreciated, please use AMRAdapterLiftoff-Beta.'
  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-VUNGLE.git',
                 :tag => s.version.to_s
                }
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform      = :ios
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRAdapterLiftoff-Beta'
end