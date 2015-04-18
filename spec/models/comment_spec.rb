require 'rails_helper'

describe Comment do
  it "rejects comments that are too short" do
    comment = Comment.create(content: "A" * 5)
    expect(comment).to be_invalid
  end

  it "creates a comment when it has enough content" do
    comment = Comment.create(content: "A" * 50)
    expect(comment).to be_valid
  end
end
