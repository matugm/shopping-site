class Comment < ActiveRecord::Base
  belongs_to :product

  validates :content, length: { in: 10..200 }
end
