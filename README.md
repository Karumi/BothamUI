# ![Karumi logo][karumilogo]BothamUI [![Build Status](https://travis-ci.org/Karumi/BothamUI.svg?branch=ui-tests-and-travis-ci-support)](https://travis-ci.org/Karumi/BothamUI) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/BothamUI.svg)](https://img.shields.io/cocoapods/v/BothamUI.svg)

BothamUI is MVP [(Model-View-Presenter)][mvp] framework written in Swift.

This project will help you setup all your presentation logic. BothamUI provides classes to represent the main components of this pattern like ``BothamViewController`` and ``BothamPresenter``.

In addition we will use a wireframe navigation model and a service locator example[[5] [di]].

##Screenshots
![Screenshot1][screenshot1]

Application UI/UX designs by [Luis Herrero][luisHerreroTwitterAccount].

Data provided by Marvel. © 2015 MARVEL


## Usage

This framework contains all the classes needed to implement your presentation logic following the MVP pattern. To use the view package, make your ``ViewController`` extend from ``Botham ViewController`` and specify in the storyboard wich class and Storyboard ID is linked to:

```swift
import BothamUI

class SampleViewController: BothamViewController {
    /*...*/
}
```
![storyboardReference]

#### Storyboard

`BothamStoryboard` provide a series of methods to help you instantiate view controllers by there storyboard ID. By default `instantiateViewController()` will search for view controller with the storyboard ID with the same name as the class.

```swift
import BothamUI

let mainStoryboard = BothamStoryboard(name: "Main")
let viewController: SampleViewController = mainStoryboard.instantiateViewController("SampleViewController")
let viewController: SampleViewController = mainStoryboard.instantiateViewController()
```

#### Presenter
To follow the MVP pattern, BothamUI also provides a ``BothamPresenter`` protocol that will be responsible for all your presentation logic. BothamUI will take care of linking your view (a ``BothamViewController``) with your presenter and subscribing it to its lifecycle. In order to do that, create a class that implement ``BothamPresenter`` and link it to your view:

```swift
import BothamUI

class SamplePresenter: BothamPresenter {
    private weak var ui: SampleUI?

    init(ui: CharacterDetailUI) {
        self.ui = ui
    }
    
    func viewDidLoad() {
        /* ... */
    }
}
```

```swift
protocol SampleUI: BothamUI {
	/* ... */
}
```
```swift
class SampleViewController: BothamViewController, SampleUI {
    /*...*/
}
```
### Dependency injection

BothamUI is built around the concept of dependency injection, all the dependencies are provided by constructor or properties, base on what UIKit allows us.

#### ViewController Instantiation

In the example a Service Locator is used in order to instantiate view controllers, but you can also use [Swinject](https://github.com/Swinject/Swinject) or others DI frameworks.

```swift
class ServiceLocator {

    static let sharedInstance = ServiceLocator()

    func provideSampleViewController() -> SampleViewController {
        let viewController: SampleViewController = provideMainStoryboard().viewController()
        viewController.presenter = SamplePresenter(ui: viewController)
        return viewController
    }
}
```

#### Lifecycle

Once both, view and presenter, are linked you can react to your view lifecycle directly from the presenter. You will be also able to call your view easily from the presenter:

```swift
class SamplePresenter: BothamPresenter {
    private weak var ui: SampleUI?

    init(ui: CharacterDetailUI) {
        self.ui = ui
    }
    
    func viewDidLoad() {
        self.ui?.showMessage("Welcome to Botham")
    }
}
```

To understand when the lifecycle methods are called take a look at the following table:

| BothamPresenter       | UIViewController      |
| --------------------- |-----------------------|
| ``viewDidLoad``       | ``viewDidLoad``       |
| ``viewWillAppear``    | ``viewWillAppear``    |
| ``viewDidAppear``     | ``viewDidAppear ``    |
| ``viewWillDisappear`` | ``viewWillDisappear`` |
| ``viewDidDisappear``  | ``viewDidDisappear``  |


### Caveats

* ViewControllers instantiated view UIStoryboard, can't reference Generic Type.
* Presenter and ViewController have a circular reference (like a ViewController and Datasource).



## CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build BothamUI.

To integrate BothamUI into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'BothamUI', '~> 1.0'
```

Then, run the following command:

```bash
$ pod install
```

Do you want to contribute?
--------------------------

Feel free to report us or add any useful feature to the library, we will be glad to improve it with your help.

Keep in mind that your PRs **must** be validated by Travis-CI.

License
-------

    Copyright 2015 Karumi

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

[mvp]: http://martinfowler.com/eaaDev/uiArchs.html#Model-view-presentermvp
[karumilogo]: https://cloud.githubusercontent.com/assets/858090/11626547/e5a1dc66-9ce3-11e5-908d-537e07e82090.png
[storyboardReference]: https://cloud.githubusercontent.com/assets/858090/11711471/f425f110-9f26-11e5-9ff3-d59b5a51308e.png
[screenshot1]: ./art/screencast1.gif
[luisHerreroTwitterAccount]: https://twitter.com/luishj
