require 'spec_helper'
require 'valid_attribute'

describe App do
	describe "has valid email" do
		it { should have_valid(:email).when('test@test.com', 'test+spam@gmail.com') }
  	it { should_not have_valid(:email).when('fail', 123) }
	end

	describe "has valid url" do
		it { should have_valid(:url).when('http://stackoverflow.com/questions/7167895/whats-a-good-way-to-validate-links-urls-in-rails-3', 'http://www.facebook.com') }
		it { should_not have_valid(:url).when('h235rwesd', 'gjdhi') }
	end

	describe "has valid code url" do
		it { should have_valid(:code_url).when('http://stackoverflow.com/questions/7167895/whats-a-good-way-to-validate-links-urls-in-rails-3', 'http://www.facebook.com') }
		it { should_not have_valid(:code_url).when('h235rwesd', 'gjdhi') }
	end

	describe "has valid description" do
		it { should have_valid(:description).when('sdfsd', 'dsecsdpjpogom') }
		it { should_not have_valid(:code_url).when('', nil) }
	end
end


 # :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }


 # :uri => { :format => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix }
