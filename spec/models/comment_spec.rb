require 'rails_helper'

describe Comment do
  it "creates a comment when it has enough content" do
    comment = build(:comment)
    expect(comment).to be_valid
  end

  it "rejects comments that are too short" do
    comment = build(:comment, :invalid)
    expect(comment).to be_invalid
  end
end
