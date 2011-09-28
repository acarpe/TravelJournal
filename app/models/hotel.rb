class Hotel < ActiveRecord::Base
  validates :name, :presence => true
  validates_length_of :name, :minimum => 2

  before_save :ensure_name_is_in_titlecase

  belongs_to :city
  has_many :guests
  scope :luxury, where(:star_rating, 5)

  def self.rated(star_rating = 3)
    where("star_rating >= ?", star_rating)
  end

  protected

  def ensure_name_is_in_titlecase
    self.name = self.name.titlecase
  end
end
