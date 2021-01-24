class Link < ApplicationRecord
  belongs_to :user
  validates_presence_of :url
  validates :url, format: URI::regexp(%w[http https])
  validates_uniqueness_of :slug
  validates_length_of :slug, maximum: 25, on: :create, message: "That is not teeny tiny - too long"
  
end
