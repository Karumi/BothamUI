Pod::Spec.new do |s|
    s.name = 'BothamUI'
    s.version = '1.0.0'
    s.license = 'Apache V2'
    s.summary = 'Model View Presenter Framework written in Swift'
    s.homepage = 'https://github.com/Karumi/BothamUI'
    s.social_media_url = 'http://twitter.com/goKarumi'
    s.authors = {'Karumi' => 'hello@karumi.com' }
    s.source = { :git => 'https://github.com/Karumi/BothamUI.git', :tag => s.version }

    s.ios.deployment_target = '8.0'

    s.source_files = 'Sources/*.swift'
	s.resources = ['Sources/*.xib']
    s.requires_arc = true
end
