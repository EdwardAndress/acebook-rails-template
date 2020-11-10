require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "can submit comments and view them" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_on "Hello, world!"
    fill_in "comment[body]", with: "I am a comment"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content("I am a comment")
  end
end
