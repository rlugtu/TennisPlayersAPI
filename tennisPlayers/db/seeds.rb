# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
data = [{
    :racquetbrand_name => "Wilson",
    :players => [{
        :name => "Roger Federer",
        :age => 39,
        :one_handed_backhand => true
    }, {
        :name => "Stefanos Tsitsipas",
        :age => 22,
        :one_handed_backhand => true
    }, {
        :name => "Gael Monfils",
        :age => 34,
        :one_handed_backhand => false
    }, {
        :name => "Roberto Bautista Agut",
        :age => 32,
        :one_handed_backhand => false
    }, {
        :name => "David Goffin",
        :age => 29,
        :one_handed_backhand => false
    }, {
        :name => "Audrey Rublev",
        :age => 22,
        :one_handed_backhand => false
    }, {
        :name => "Karen Khachanov",
        :age => 24,
        :one_handed_backhand => false
    }]
},{
    :racquetbrand_name => "Head",
    :players => [{
        :name => "Novak Djokovic",
        :age => 33,
        :one_handed_backhand => false
    },{
        :name => "Alexander Zvererv",
        :age => 23,
        :one_handed_backhand => false 
    }, {
        :name => "Diego Schwartzman",
        :age => 28,
        :one_handed_backhand => false 
    }]
},{
    :racquetbrand_name => "Babolat",
    :players => [{
        :name => "Rafael Nadal",
        :age => 34,
        :one_handed_backhand => false
    },{
        :name => "Dominic Thiem",
        :age => 27,
        :one_handed_backhand => true
    }, {
        :name => "Matteo Berrettini",
        :age => 24,
        :one_handed_backhand => false 
    }, {
        :name => "Fabio Fognini",
        :age => 33,
        :one_handed_backhand => false
    }]
},{
    :racquetbrand_name => "Yonex",
    :players => [{
        :name => "Denis Shapovalov",
        :age => 21,
        :one_handed_backhand => true
    }]
}]

Player.destroy_all
Racquetbrand.destroy_all

data.each do |full_racquetbrand|
    racquetbrand_name = full_racquetbrand[:racquetbrand_name]
    players_data = full_racquetbrand[:players]

    racquetbrand = Racquetbrand.find_or_create_by(name: racquetbrand_name)
    players_data.each do |player|
        Player.create(player.merge(racquetbrand: racquetbrand))
    end
end