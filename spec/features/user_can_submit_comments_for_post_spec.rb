require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit comments and view them" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    page.find('p', text: 'Hello, world!').click_link('Add comment')
    fill_in "Message", with: "I am a comment"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content("I am a comment")
  end
end
