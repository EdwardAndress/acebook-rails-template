require 'rails_helper'

RSpec.feature "Post viewing", type: :feature do
  scenario "A user can view an individual post by id" do
    Post.create(message: "My new post")
    id = Post.last.id
    visit("/posts")
    click_on "My new post"
    expect(page).to have_content("My new post")
    expect(current_path).to eq("/posts/#{id}")
  end
end
