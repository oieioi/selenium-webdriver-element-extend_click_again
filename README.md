# Selenium::WebDriver::Element::ExtendClickAgain

`Selenium::WebDriver::Element#click` sometimes fails because the element is not clickable and other element receives the click:

```
Element <button name="button">...</button> is not clickable at point (40, 881).
Other element would receive the click: <footer>...</footer>
```

This gem extends `click` to avoid that.  When `click` fails with `not clickable` error, this tries to center the element with executing JavaScript [`Element.scrollIntoView()`](https://developer.mozilla.org/docs/Web/API/Element/scrollIntoView) and click it again.

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
