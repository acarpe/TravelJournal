Factory.define :city do |f|
  f.sequence(:name) { |n| "city #{n}" }
end

Factory.define :hotel do |f|
  f.sequence(:name) {|n| "hotel #{n}"}
  f.association :city, factory: :city
end

