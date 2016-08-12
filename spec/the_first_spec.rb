require "spec_helper"

describe "A new Context" do
  it "should contain a spec that passes" do
    @driver.navigate.to "http://www.google.com"
    expect(true).to be true
  end

  it "should contain a spec that fails" do
    @driver.navigate.to "http://www.moogle.com"
    expect(false).to be true
  end
end