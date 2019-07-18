# Selenium::Webdriver::Element::ExtendClickAgain

 `Selenium::WebDriver::Element#click` sometimes fails because the element is not clickable and other element receives the click. This gem extends `click` to scroll the element into the center to avoid that.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'selenium-webdriver-element-extend_click_again'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install selenium-webdriver-element-extend_click_again

## Usage

```ruby
require 'selenium/webdriver/element/extend_click_again'
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
