sis = Movie.create!(name:"Sleepless in Seattle", year:"1993")
sis.characters.create(name:"Tom Hanks")


hgg = Movie.create!(name:"The Hunger Games", year:"2012")
hgg.characters.create(name:"Jennifer Lawrence")


twl = Movie.create!(name:"Twilight", year:"2008")
twl.characters.create(name:"Robert Pattinson")
twl.characters.create(name:"Christen Stewart")
