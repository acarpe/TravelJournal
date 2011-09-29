class Trip < ActiveRecord::Base
  belongs_to :hotel

  validates :name, :uniqueness => true, :presence => true
end
