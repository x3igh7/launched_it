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

  it 'saves a comment if all required info is entered' do
    app = FactoryGirl.create(:app)
    visit "/apps"
    click_link "#{app.name}"
    fill_in "Content", :with => "test"
    fill_in "First name", :with => "test"
    fill_in "Last name", :with => "test"
    fill_in "Email", :with => "test@test.com"
    click_button "Add New Comment"
    expect(page).to have_content("Comment was successfully created")
  end

  it 'saves a comment if all required info is entered' do
    app = FactoryGirl.create(:app)
    visit "/apps"
    click_link "#{app.name}"
    fill_in "Content", :with => "this is my comment at end of app"
    fill_in "First name", :with => "test"
    fill_in "Last name", :with => "test"
    fill_in "Email", :with => "test@test.com"
    click_button "Add New Comment"
    visit apps_path
    click_link "New"
    fill_in 'Name', :with =>'Matt'
    fill_in 'URL', :with => "http://stackoverflow.com/questions/7167895/whats-a-good-way-to-validate-links-urls-in-rails-3",:match => :prefer_exact
    fill_in 'Source URL', :with => "http://stackoverflow.com/questions/7167895/whats-a-good-way-to-validate-links-urls-in-rails-3",:match => :prefer_exact
    fill_in 'Description', :with => "so great!"
    fill_in "Email", :with => "sdipodjf@piosf.com"
    click_button("Create App")
    visit apps_path
    click_link "#{app.name}"
    expect(page).to have_content("this is my comment at end of app")
  end
end
