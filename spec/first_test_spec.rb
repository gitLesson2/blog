require 'selenium-webdriver'
require 'rspec'

describe "Blog - HomePage" do
  it "Verify HomePage title" do
    @driver.get("http://localhost:3000")
    expect(@driver.title).to eq("Blog")
  end
  it "Verify article creation" do
    @driver.get("http://localhost:3000")
    @driver.find_element(:link, "Create new article").click
    @driver.find_element(:id, "article_title").send_keys("Game title")
    @driver.find_element(:id, "article_text").send_keys("Game text")
    @driver.find_element(:css, "input[type='submit']").click
    expect(@driver.find_element(:link, "Game title").text).to eq("Game title")
  end
end
