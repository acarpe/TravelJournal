# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
cities = City.create([
                    { name: 'Chicago' }, 
                    { name: 'Copenhagen' },
                    { name: 'Cincinnati' }
                    ])

Hotel.create([
              { :name => "Hollywood Hotel", :description => "the one and only", :star_rating => 1},
              { :name => "Hollywood Hotel", :description => "the other one", :star_rating => 2},
              { :name => "Ant Hotel", :description => "not really a good place", :star_rating => 2},
              { :name => "200th Hotel", :description => "Why not rate me?"},
              { :name => "Bates Hotel", :description => "thi is a veryt long descitpion. This comment has enough of the description to see '...'", :star_rating => 3}
            ])

Trip.create([
            { :name => "Australia 2006", :date => Date.now },
            { :name => "U.S.A. 2007", :date => Date.now },
            { :name => "Machu Picchu 2008", :date => Date.now },
            { :name => "Sweden 2009", :date => Date.now },
            { :name => "Cina 2010", :date => Date.now}
])
