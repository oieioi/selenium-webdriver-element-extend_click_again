# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selenium/webdriver/element/extend_click_again/version'

Gem::Specification.new do |spec|
  spec.name          = 'selenium-webdriver-element-extend_click_again'
  spec.version       = Selenium::Webdriver::Element::ExtendClickAgain::VERSION
  spec.authors       = ['oieioi']
  spec.email         = ['atsuinatsu.samuifuyu@gmail.com']

  spec.summary       = 'Try to click element when element click intercepted'
  spec.description   = 'Selenium::WebDriver::Element#click sometimes fails because the element is not clickable and other element would receive the click. This gem extend `click` to scroll the element into the center to avoid that.'
  spec.homepage      = 'https://github.com/oieioi/selenium-webdriver-element-extend_click_again'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'selenium-webdriver'
  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
