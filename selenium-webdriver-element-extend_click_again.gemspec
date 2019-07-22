# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selenium/webdriver/element/extend_click_again/version'

Gem::Specification.new do |spec|
  spec.name          = 'selenium-webdriver-element-extend_click_again'
  spec.version       = Selenium::Webdriver::Element::ExtendClickAgain::VERSION
  spec.authors       = ['oieioi']
  spec.email         = ['atsuinatsu.samuifuyu@gmail.com']

  spec.summary       = 'Extends `Element#click` to avoid not clickable error.'
  spec.description   = <<~DESC
    Selenium::WebDriver::Element#click sometimes fails because the element is not clickable and other element receives the click.
    This gem extends `click` to avoid that.
    When `click` fails with `not clickable` error, this tries to center the element with executing JavaScript `Element.scrollIntoView()` and click it again.
   DESC
  spec.homepage      = 'https://github.com/oieioi/selenium-webdriver-element-extend_click_again'
  spec.license       = 'MIT'

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
