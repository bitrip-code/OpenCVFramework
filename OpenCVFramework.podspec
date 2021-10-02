# When linting, be sure to run:
#
# $ pod spec lint OpenCVFramework.podspec --allow-warnings
#
# The --allow-warnings flag is needed because there are several compiler
# warnings emitted during compilation of the libraries, which would otherwise
# cause the linter to fail.
#
Pod::Spec.new do |spec|

  spec.name         = "OpenCVFramework"
  spec.version      = "4.5.4"
  spec.summary      = "OpenCV: Open Source Computer Visition Library"
  spec.description  = <<-DESC
  This is a binary build of the opencv2.framework for CocoaPods integration.
                   DESC

  spec.homepage     = "https://github.com/opencv/opencv"
  spec.license      = "Apache"
  spec.author       = "Nastro Technologies"
  spec.platform     = :ios, "14.0"
  spec.source       = { :http => "https://github.com/bitrip-code/OpenCVFramework/releases/download/#{spec.version}/opencv2.zip" }

  spec.vendored_frameworks = "opencv2/opencv2.framework"

  # This works around an issue when linting the project:
  # Error: "Building for iOS Simulator, but linking in dylib built for iOS"
  # See https://stackoverflow.com/a/63955114/511287
  #
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end

