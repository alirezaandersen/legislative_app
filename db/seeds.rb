# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  bill = Bill.create(title: Faker::Lorem.word, description: Faker::Lorem.paragraph, state: Faker::Address.state_abbr)

  parties = ["Democrat", "Republican", "Indepenent", "Green"]
  party_affil = PartyAfflication.create(title: parties.sample)

  sponsor = Sponsor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, party_afflication_id: party_affil.id)

  categories = ["health", "energy", "defense", "environment"]
  cat = Category.create(name: categories.sample, classification: Faker::Pokemon.name)

  actions = ["Passed", "Vetoed", "Pending", "Adopted"]
  action = Action.create(name: actions.sample)

  bill.bill_actions.create(action_id: action.id)
  bill.bill_categories.create(category_id: cat.id)
  bill.bill_sponsors.create(sponsor_id:sponsor.id)
end
puts "Bill Created"
puts "Party Affilication Created"
puts "Sponsors Created"
puts "Categories Created"
puts "Actions Created"
puts "JOIN TABLE BillActions"
puts "JOIN TABLE BillCategories"
puts "JOIN TABLE BillSponsors"
