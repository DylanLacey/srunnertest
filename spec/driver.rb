##Blank Selenium Test
require "selenium/webdriver"
require 'selenium/webdriver/remote/http/persistent'


def un
  ENV["SAUCE_USERNAME"]
end

def ak
  ENV["SAUCE_ACCESS_KEY"]
end

def auth
  "#{un}:#{ak}"
end

def server 
  "ondemand.saucelabs.com"
end

def port
  80
end

def endpoint
  "#{server}:#{port}/wd/hub"
end

def auth_endpoint 
  "http://#{auth}@#{endpoint}"
end

def caps

end

http_client = ::Selenium::WebDriver::Remote::Http::Persistent.new
http_client.timeout = 300 # Browser launch can take a while   

driver = Selenium::WebDriver.for :remote, :url => auth_endpoint, :desired_capabilities => caps, :http_client => http_client
driver.navigate.to "http://www.google.com"
driver.quit 

