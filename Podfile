workspace 'BothamUI.xcworkspace'
xcodeproj 'BothamUI.xcodeproj'
use_frameworks!

target 'BothamUIUnitTests' do
    pod "Nimble"
end

target 'Example', :exclusive => true do
        xcodeproj 'Example/Example.xcodeproj'
    pod "BothamUI", :path => "./"
end

target 'ExampleUITests', :exclusive => true do
        xcodeproj 'Example/Example.xcodeproj'
    pod "BothamUI", :path => "./"
    pod "Nimble"
end