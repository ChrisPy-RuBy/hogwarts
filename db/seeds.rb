require_relative("../models/student.rb")
require_relative("../models/house.rb")

require('pry-byebug')


house1 = House.new({
  "house_name" => "griffendor",
  "logo_url" => "https://vignette3.wikia.nocookie.net/harrypotter/images/9/96/Gryffindor_crest_by_tuliipiie-d491bqc.jpg/revision/latest/scale-to-width-down/394?cb=20130508231701"
  })

house2 = House.new({
  "house_name" => "hugglepuff",
  "logo_url" => "https://vignette2.wikia.nocookie.net/harrypotter/images/5/50/0.51_Hufflepuff_Crest_Transparent.png/revision/latest/scale-to-width-down/700?cb=20161020182518"
  })

house3 = House.new({
  "house_name" => "slytherin",
  "logo_url" => "https://vignette4.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png/revision/latest?cb=20161020182557"
  })

house4 = House.new({
  "house_name" => "Ravenclaw",
  "logo_url" => "https://vignette2.wikia.nocookie.net/harrypotter/images/2/29/0.41_Ravenclaw_Crest_Transparent.png/revision/latest?cb=20161020182442"
  })


# house1.save()
# house2.save()
house3.save()
house4.save()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => house1.id,
  "age" => 20
  })

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => house1.id,
  "age" => 21
  })

# student1.save()
# student2.save()


binding.pry
nil