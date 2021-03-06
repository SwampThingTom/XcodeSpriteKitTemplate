## Multiplatform SpriteKit Project Template for Xcode

A custom Xcode project template for creating multiplatform SpriteKit games in Swift.
It creates a project with bare bone versions of the basic files needed to support iOS, tvOS, and macOS targets, without all of the cruft that is
generated by Apple's default multiplatform Game template.

### Installing

Simply copy the contents of the "Project Templates" folder in this repository into "~/Library/Developer/Xcode/Templates/".

```
cp -r Project\ Templates ~/Library/Developer/Xcode/Templates/
```

The template will show up under a section named "Personal" in Xcode's template browser.
If you want to use a different name, simply rename the "Personal" directory under "Project Templates".

### Changes from the Built-in Multiplatform Game Template

1. The demo code has been removed

    I'm sure the demo code is useful the first time someone creates a SpriteKit project to learn how to build a game.
    After that, it's just crap that needs to be deleted every time you create a new project.

2. No `Actions.sks` or `GameScene.sks`

    I personally haven't found a way to work effectively with SpriteKit's scene editor.
    I find it just as easy to create my scenes programatically.
    
    I also think it's better to create scenes from the platform-specific code so they can be tailored to that platform.
    For example, your iOS target may include touch controls that won't be part of your macOS and tvOS targets.

    If you do find the scene editor useful for your workflow, it's easy enough to add the files back from within Xcode.

3. No conditional compilation for supporting touch (iOS) vs mouse events (macOS)

    I am fairly opinionated that platform-specific code belongs in platform-specific targets.
    Communication with shared code should be through protocols.

    To make this change, the shared code now defines a `LocationTapping` protocol.
    The touch handling code in iOS and the mouse handling code in macOS now use that protocol to notify
    the `GameScene` of the location of a tap event.

4. watchOS is no longer a supported target

    Although it's interesting to think of truly multiplatform games that can also run on an Apple Watch,
    it's not something that's easy to do with the kinds of games I am currently interested in writing.

5. Swift only, at least for now

    The template still gives you the option to choose Objective-C because I did not feel comfortable making
    the changes to remove that option.
    However choosing Objective-C will create a project with no source files, just the project files and
    miscellaneous artifacts.
    This is not particularly useful for Objective-C developers.

### Credits and More Info

Thanks to Paul Hudson ([@twostraws](https://twitter.com/twostraws)) at [Hacking with Swift](https://www.hackingwithswift.com/) and Keith Harrison ([@kharrison](https://twitter.com/kharrison)) at [Use Your Loaf](https://useyourloaf.com/) for the idea and enough info to get me started.
See their respective blogs to learn how to create your own custom Xcode templates.

[How to Create a Custom Xcode Template for Coordinators](https://www.hackingwithswift.com/articles/158/how-to-create-a-custom-xcode-template-for-coordinators)

[Creating Custom Xcode Project Templates](https://useyourloaf.com/blog/creating-custom-xcode-project-templates/)