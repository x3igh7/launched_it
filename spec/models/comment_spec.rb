require 'spec_helper'

describe Comment do
  it 'requires a comment be entered' do
    comment = Comment.new
    expect(comment).to_not be_valid
  end
end
