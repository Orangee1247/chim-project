# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(
    user_name: 'admin',
    email: 'admin@123.com', 
    password: '123456', 
    password_confirmation: '123456',
    user_role: 1
  )
user_list = [
	["Hung","hung@gmail.com","123456","123456",1,"1996-1-1","male","01234568"],
	["Dat","dat@gmail.com","123456","123456",1,"1996-1-1","male","01234568"],
	["TAnh","TAnh@gmail.com","123456","123456",1,"1996-1-1","male","01234568"],
	["Binh","Binh@gmail.com","123456","123456",1,"1996-1-1","male","01234568"],
	["Quoc","Quoc@gmail.com","123456","123456",1,"1996-1-1","male","01234568"]
]
user_list.each do |name, mail, password, password_confirmation, role, birthday, sex, phone|
	User.create( user_name: name, email: mail, password: password, password_confirmation: password_confirmation,
		user_role: role, birthdate: birthday, sex: sex, phone: phone)
end


species_list = [
	["Palaeognathae",
		"Palaeognathae, or paleognaths, is one of the two living clades of birds – the other being Neognathae.	",
		0,0],
	["Otidae",
		"Otidae is a clade that includes the superorders Otidimorphae (bustards, turacos, and cuckoos) and Cypselomorphae (nightbirds, swifts, and hummingbirds).",
		0,0],
	["Ardeae",
		"Ardeae is a clade that of birds that contains Eurypygimorphae and Aequornithes, named in 2014 by genome analysis.",
		0,0]
	]
species_list.each do |species_name,species_info,min_price,max_price|
	Species.create( species_name: species_name, species_info: species_info, 
		min_price: min_price, max_price: max_price)
end



birds_list = [
	["Rheidae",
		"Rheidae is a family of flightless ratite birds which first appeared in the Paleocene.",
		0,
		1],
	["Ostrich",
		"The ostriches are a family, Struthionidae, of flightless birds. Ostriches first appeared during the Miocene epoch, though various Paleocene, Eocene and Oligocene fossils may also belong to the family.",
		0,
		1],
	["Kiwi",
		"Kiwi are flightless birds native to New Zealand, in the genus Apteryx and family Apterygidae. ",
		0,
		1],
	["Tinamou",
		"Tinamous form an order of birds (Tinamiformes), comprising a single family (Tinamidae) with two distinct subfamilies, containing 47 species found in Mexico, Central America, and South America. ",
		0,
		1],
	["Casuariiforme",
		"The Casuariiformes is an order of large flightless bird that has four surviving members: the three species of cassowary, and the only remaining species of emu. ",
		0,
		1],
	["Moa",
		"The moa were nine species (in six genera) of flightless birds endemic to New Zealand.",
		0,
		1],

	["Cuckoo",
		"The cuckoos are a family of birds, Cuculidae, the sole taxon in the order Cuculiformes.",
		0,
		2],
	["Bustard",
		"The ostriches are a family, Struthionidae, of flightless birds. Ostriches first appeared during the Miocene epoch, though various Paleocene, Eocene and Oligocene fossils may also belong to the family.",
		0,
		2],
	["Turaco",
		"Turaco are flightless birds native to New Zealand, in the genus Apteryx and family Apterygidae. ",
		0,
		2],
	["Frogmouth",
		"Frogmouth form an order of birds (Tinamiformes), comprising a single family (Tinamidae) with two distinct subfamilies, containing 47 species found in Mexico, Central America, and South America. ",
		0,
		2],
	["Caprimulgiformes",
		"The Caprimulgiformes is an order of large flightless bird that has four surviving members: the three species of cassowary, and the only remaining species of emu. ",
		0,
		2],
	["Owlet-nightjar",
		"Owlet-nightjar were nine species (in six genera) of flightless birds endemic to New Zealand.",
		0,
		2],

	["Eurypygiformes",
		"Eurypygiformes is a family of flightless ratite birds which first appeared in the Paleocene.",
		0,
		3],
	["Phaethontiformes",
		"Phaethontiformes are a family, Struthionidae, of flightless birds. Ostriches first appeared during the Miocene epoch, though various Paleocene, Eocene and Oligocene fossils may also belong to the family.",
		0,
		3],
	["Gaviiformes",
		"Gaviiformes are flightless birds native to New Zealand, in the genus Apteryx and family Apterygidae. ",
		0,
		3],
	["Penguin",
		"Penguins (order Sphenisciformes, family Spheniscidae) are a group of aquatic, flightless birds.",
		0,
		3],
	["Stork",
		"The Stork is an order of large flightless bird that has four surviving members: the three species of cassowary, and the only remaining species of emu. ",
		0,
		3],
	["Suliformes",
		"The Suliformes were nine species (in six genera) of flightless birds endemic to New Zealand.",
		0,
		3],
	]
birds_list.each do |bird_name, bird_info, bird_price, species_id|
	Bird.create( bird_name: bird_name, bird_info: bird_info, 
		bird_price: bird_price, species_id: species_id)
end

(1..18).each do |n|
  image = "#{n}.jpg"
  bird_id = n
  BirdImage.create(image: image, bird_id: bird_id)
end