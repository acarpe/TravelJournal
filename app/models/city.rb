class City < ActiveRecord::Base
  has_many :hotels, :include => :guests
end
