# As a user
# I want to 'give props' for an application
# So that I can applaud the efforts of its author

# Acceptance Criteria
# I can give an application props when reading about it
# I can see a total number of props each app has received when reading about it

require 'spec_helper'

describe "giving props to an app" do

  let!(:app) { FactoryGirl.create(:app) }
  before { visit app_path(app) }

  it "increments the prop count by 1" do
    before_count = app.props
    click_link 'Give Props!'
    expect(app.reload.props).to eql(before_count+1)
    expect(current_path).to eql(app_path(app) )
  end
  it "should display the new prop count" do
    click_link 'Give Props!'
    expect(page).to have_content(app.props)
  end
  it "displays the props count on the index page" do
    visit root_path
    expect(page).to have_content(App.last.props)
  end
end
