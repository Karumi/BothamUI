workspace 'BothamUI.xcworkspace'
xcodeproj 'BothamUI.xcodeproj'
platform :ios, '8.0'
use_frameworks!

target 'BothamUIUnitTests' do
    pod 'Nimble'
end

target 'Example' do
        xcodeproj 'Example/Example.xcodeproj'
    pod 'BothamUI', :path => './'
    pod 'SDWebImage', '~>3.7'
end

target 'ExampleTests' do
    xcodeproj 'Example/Example.xcodeproj'
    pod "Nimble"
end

target 'ExampleAcceptanceTests' do
        xcodeproj 'Example/Example.xcodeproj'
    pod 'BothamUI', :path => "./"
    pod 'Nimble'
    pod 'KIF', '~> 3.0', :configurations => ['Debug']
end
