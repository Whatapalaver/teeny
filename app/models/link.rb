class Link < ApplicationRecord
  belongs_to :user

  before_validation :generate_slug

  validates_presence_of :url
  validates :url, format: URI::regexp(%w[http https])
  validates_uniqueness_of :slug
  validates_length_of :slug, maximum: 25, on: :create, message: "That is not teeny tiny - too long"

  
  def generate_slug
    self.slug = SecureRandom.uuid[0..5] if self.slug.nil? || self.slug.empty?
    true
  end
end
