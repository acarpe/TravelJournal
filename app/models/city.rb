class City < ActiveRecord::Base
  has_many :hotels, :include => :guests
  has_many :restaurants
end
