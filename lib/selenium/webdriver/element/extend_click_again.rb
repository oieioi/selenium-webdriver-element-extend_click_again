# frozen_string_literal: true

require 'selenium/webdriver/element/extend_click_again/version'

module Selenium
  module WebDriver
    # monkey patch
    class Element
      # @override
      def click
        bridge.click_element @id
      rescue Selenium::WebDriver::Error::WebDriverError
        bridge.execute_script("arguments[0].scrollIntoView({behavior: 'auto', block: 'center', inline: 'nearest'});", self)
        bridge.click_element @id
      end
    end
  end
end
