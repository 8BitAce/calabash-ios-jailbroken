What is it?
===========

Calabash-ios (https://github.com/calabash/calabash-ios) is a framework you can load into an iOS application to allow scripted testing including touch injection.

calabash-ios-jailbroken is a number of tweaks to this system that allows someone with a jailbroken iOS device to load the framework into an arbitrary app
allowing for custom automated testing (or just plain automation).

At the moment the methods used to do this are not user-friendly and have quite a few limitations, so YMMV.


How to Use
==========
1. Download the current calabash.framework from https://github.com/calabash/calabash-ios/downloads and place in the same directory as this project.
2. Edit the filter (Calabash.plist) to fit the package name of the app(s) you will be using. (This can be done on device as well). (I'll make this cleaner later).
3. With theos properly configured run `make package install` to install the tweak on your iOS device.
3. Install Calabash on your OS X device by installing the calabash-cucumber gem.
3. Set the following environment variables via `export VAR_NAME=VALUE`
  * `NO_LAUNCH=1`
  * `DEVICE=iphone`
  * `DEVICE_ENDPOINT=http://YOUR_DEVICE_IP:37265`
4. Create a scenario just like you would with Calabash-ios OR run `calabash-ios` for an interactive prompt. (More info on Calabash here: https://github.com/calabash/calabash-ios/wiki).

Current Caveats
===============
* SpringBoard is currently excluded from injection. This is because once it creates the server, other apps cannot create one once launched.
A workaround is currently being researched.
* You must close all other apps before attempting to launch your targeted app (and subsequently create a server).
* The tweak will inject into ALL apps at ALL times. This will likely lead to performance drops. It is suggested you disable this tweak when not using it (i.e. through SBSettings). (I am working on making a toggle for Preferences.app).
