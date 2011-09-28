class Trip < ActiveRecord::Base
  belongs_to :hotel

  validate :name, :uniqueness => true, :presence => true
end
