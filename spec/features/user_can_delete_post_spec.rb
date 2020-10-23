require 'rails_helper'

RSpec.feature "Post deletion", type: :feature do
  scenario "A user can delete a post" do
    Post.create(message: "One post")
    Post.create(message: "Another post")
    visit("/posts")
    page.find('p', text: 'Another post').click_link('Delete')
    expect(page).to have_content("One post")
    expect(page).to_not have_content("Another post")
  end
end
