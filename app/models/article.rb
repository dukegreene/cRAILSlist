class Article < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true
  validates_length_of :title, :within => 5..30, :too_short => "Title must be at least 5 characters long.", :too_long => "Title length cannot exceed 30 characters."
end
