class Trip < ActiveRecord::Base
  belongs_to :hotel

  validates :name, :uniqueness => true, :presence => true
  validates :hotel, :presence => true
  validates_length_of :name, :minimum => 2
end
