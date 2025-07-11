#
#  Be sure to run `pod spec lint FlexSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "FlextudioSDK"
  spec.version      = "1.0.17"
  spec.summary      = "FlextudioSDK is a Framework created for Flextudio native app."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = "FlextudioSDK is a Framework intended for FlexTudio customers."

  spec.homepage     = "https://github.com/FlexSDKCreator"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  #spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author               = { "FlexSDKCreator" => "ksystem.nepal@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  spec.platform     = :ios, "15.0"

  #  When using multiple platforms
   spec.ios.deployment_target = "15.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #
    spec.source       = { :git => "https://github.com/FlexSDKCreator/SDK_ios.git", :branch => "main", :tag => "#{spec.version}" }



  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

   spec.source_files  = "FlexSDK/**/*.{swift}"
   #spec.subspec "assets" do |ss|
   # ss.source_files = "FlexSDK/assets/*"
   #end
  # spec.public_header_files = "FlexSDK/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = ""
   spec.resources =  "FlexSDK/**/*.{storyboard,xib,png,jpeg,jpg,gif}"
   spec.ios.resource_bundle = { 'FlexSDKAssets' => ['FlexSDK/assets/*'] }
  # spec.ios.resource_bundle = { 'FlexSDKResource' => ['FlexSDK/**/*.{storyboard,xib,png,jpeg,jpg,gif,xcassets}'] }

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "UIKit"
   spec.ios.frameworks = ['UIKit', 'Foundation']

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  spec.requires_arc = true
  spec.swift_version = '5.1'

  spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  
  spec.static_framework = true

  spec.dependency "ObjectMapper", '~> 4.2.0'
  spec.dependency "Firebase", '~> 10.29.0'
  spec.dependency "Firebase/Core", '~> 10.29.0'
  spec.dependency "Firebase/DynamicLinks", '~> 10.29.0'
  spec.dependency "Firebase/Installations", '~> 10.29.0'
  spec.dependency "Firebase/Messaging", '~> 10.29.0'
  spec.dependency "SDWebImage", '~> 5.18.12'
  spec.dependency "GoogleMLKit/BarcodeScanning", '~> 6.0.0'

end
