require 'spec_helper'

# As a user
# I want to browse the list of applications
# So that I can see what they're about
# Acceptance Criteria

# I can view a list of all applications that have been submitted
# I can view an individual application that has been submitted. It should show all of the attributes a user can specify when sharing their application.
# If I navigate to a URL where the application id does not exist, I should receive an "Application Not Found" error, and I should be redirected to the app listing


describe 'Browsing Application' do
	it "shows a list of all submitted applications" do
		FactoryGirl.create(:app)
		visit "/apps"
		apps = App.pluck(:name)
		apps.each do |unique_name|
			expect(page).to have_content(unique_name)
		end
	end

	it "shows an individual application with all of the attributes when selected from master list" do
		app = FactoryGirl.create(:app)
		visit "/apps"
		click_link "Show"
		expect(page).to have_content("#{app.name}")
	end

	it 'should tell me if I go to the wrong page and send me back to the app list page' do
		visit "/apps/7"
		expect(page).to have_content("Application Not Found")
	end

end