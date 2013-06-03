require 'spec_helper'

# As a user
# I want to comment on an app
# So that I can discuss it
# Acceptance Criteria

# I must specify a comment for it to persist
# I must also specify my first name, last name, and email address as part of the comment
# I should see my comment at the end of the list of comments,
# when looking at the specific application, after I've created the comment.




describe "Comments" do
  it "must include a comment to be saved" do
    visit '/comments/new'
    fill_in "Content", :with => "test"
    click_button "Create Comment"
    expect(page).to have_content("Comment was successfully created")
  end

  it 'will not save without a comment' do
    visit '/comments/new'
    click_button "Create Comment"
    expect(page).to_not have_content("Comment was successfully created")
  end
end