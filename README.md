# OpenCVFramework

## To build the library:

If you don't have CMake installed, install it from https://cmake.org

open the terminal to build from the command line

clone git@github.com:bitrip-code/opencv.git, branch swift-package

```
# add CMake to the path if needed:
$ PATH=$PATH:/Applications/CMake.app/Contents/bin

$ cd opencv
$ git checkout VERSION_TAG_TO_BUILD
$ python platforms/ios/build_framework.py ios --build_only_specified_archs --iphoneos_archs arm64 --iphonesimulator_archs x86_64 --dynamic

# Wait for the build to complete. Takes a long time.
# Next, create a tarball of the framework.

$ cd ios
$ mkdir opencv2
$ mv opencv2.framework/ opencv2/
$ cp ../LICENSE opencv2
$ zip -r opencv2.zip opencv2

# Reveal the zip file in Finder for easier upload to Github.

$ open -R opencv2.zip
```

## To upload the updated library to Github

1. Update the podspec to reference the new version number. Commit and push.
1. Tag the commit created above with the new version number.
1. Go to the [Github Tags page](https://github.com/bitrip-code/OpenCVFramework/tags).
1. Click the "..." on the right side of the row corresponding to the newly-created tag.
1. Select _Create release_.
1. Drag and drop the zip file (created above) into your web browser under the _Attach binaries by dropping them here or selecting them_ area on the page.
1. Click _Publish release_.

## To update the podspec

Update the local podspec and copy it to the right subdirectory of
https://github.com/bitrip-code/iOS-BitRip-Podspecs/tree/main/OpenCVFramework

