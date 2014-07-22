RedXcode
========

When Xcode is being ran in a debugger, make it obvious that it's in dev mode.

![Screenshot of plugin](https://raw.githubusercontent.com/orta/RedXcode/master/web/screenshot.png)
![Screenshot of dock icon](https://raw.githubusercontent.com/orta/RedXcode/master/web/screenshot2.png)

#### Features

* Hue shifts the app icon when running Xcode in a debugger
* Adds the icon to the top right corner in Xcode 5, Xcode 6 support is not in.
* Hue shift value can be changed by `defaults write com.apple.dt.Xcode ORHueShiftKey [number]`

#### Installation

Install [Alcatraz](http://alcatraz.io/). In XCode choose Window, Package Manager and search for "RedXcode". Alternatively, clone this repo and hit build, then restart Xcode. Alcatraz is better, you get updates with no effort.

#### Contributing

It's actually _way_ easier to work on Plugins than you think. Hitting run in Xcode on this project will open a new Xcode with a working lldb instance and you can work on it like any other app. Contributions are extremely welcome of course, large visual design changes should probably be talked about in an issue first FWIW.
