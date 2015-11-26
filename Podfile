workspace 'BothamUI.xcworkspace'
xcodeproj 'BothamUI.xcodeproj'
platform :ios, '8.0'
use_frameworks!

target 'BothamUIUnitTests' do
    pod "Nimble"
end

target 'Example', :exclusive => true do
        xcodeproj 'Example/Example.xcodeproj'
    pod "BothamUI", :path => "./"
end

target 'ExampleTests', :exclusive => true do
    xcodeproj 'Example/Example.xcodeproj'
    pod "Nimble"
end

target 'ExampleUITests', :exclusive => true do
        xcodeproj 'Example/Example.xcodeproj'
    pod "BothamUI", :path => "./"
    pod "Nimble"
end