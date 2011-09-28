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
              { :name => "200th Hotel", :description => "Why not rate me?"},
              { :name => "Bates Hotel", :description => "thi is a veryt long descitpion. This comment has enough of the description to see '...'", :star_rating => 3}
            ])
