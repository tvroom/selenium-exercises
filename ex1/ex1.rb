require 'rubygems'
require 'selenium-webdriver'
require 'test/more'
include Test::More


selenium = Selenium::WebDriver.for(:firefox)     
selenium.get("http://tvroom.github.io/selenium-exercises/ex1/")
elem=selenium.find_element(:css, ".sel_header")

# Maybe should update with a more common Ruby way to run tests, 
# although I like the Test::More approach from Perl :)
# Would take alternate ways of running tests from anyone who writes a lot of Ruby

ok("Selenium Test Header" == elem.text, "Matches expected value for Header")
selenium.quit
