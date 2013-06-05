require 'spec_helper'
require 'valid_attribute'

describe Comment do
  it 'requires a comment be entered' do
    comment = Comment.new
    expect(comment).to_not be_valid
  end

  describe "requires first name" do
    it { should have_valid(:first_name).when('test') }
    it { should_not have_valid(:first_name).when('', nil) }
  end

  describe "requires last name" do
    it { should have_valid(:last_name).when('test') }
    it { should_not have_valid(:last_name).when('', nil) }
  end

  describe "requires email" do
    it { should have_valid(:email).when('test@test.com') }
    it { should_not have_valid(:email).when('', nil) }
  end

    describe "can add a comment to an app" do
    it "comment persists in database" do
      app = FactoryGirl.create(:app, :static_name)
      current_count = app.comments.count
    end
  end
end
