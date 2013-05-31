require 'spec_helper'

# As a user
# I want to submit my app
# So that I can showcase it
# Acceptance Criteria

# I must specify my application name, url, codebase url and a description.
# I must specify a valid url
# I must specify a valid codebase url
# I can optionally specify a contact email address for an application
# If I specify a contact email address, it should validate that the address is a valid email address


describe App do

	let(:valid_app) {FactoryGirl.build(:app)}

	it 'must specify application name, url, codebase url and a description' do
		visit '/apps'
		fill_in 'Name', :with =>'Matt'
		expect(page).to have_content('Matt')
	end



end
