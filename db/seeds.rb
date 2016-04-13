# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hec = School.create!(name: 'HEC', jt_id: 3178)
swarovski = Company.create!(name: 'Swarovski', jt_id: 5286)

junior = User.create!(
  first_name: 'Louis',
  last_name: 'Mireau',
  email: 'david.ruyer+junior@jobteaser.com',
  avatar_url: 'https://media.licdn.com/media/p/4/000/17e/153/33c1e71.jpg',
  promotion: 2017,
  school: hec
)

intermediate = User.create!(
  first_name: 'Marion',
  last_name: 'Dorp',
  email: 'david.ruyer+intermediate@jobteaser.com',
  avatar_url: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/2/005/08c/226/28a4183.jpg',
  promotion: 2013,
  school: hec
)

senior = User.create!(
  first_name: 'Agnès',
  last_name: 'Le Tel',
  email: 'david.ruyer+senior@jobteaser.com',
  avatar_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAALKAAAAJGQzMGQ5YWQ5LTM0YTItNGZiZi05NTA1LTM2MWI1MmQ4MGI4ZQ.jpg',
  promotion: 1995,
  school: hec
)

Position.create!(user: junior, company: swarovski, title: 'Stage contrôleur de gestion')
Position.create!(user: intermediate, company: swarovski, title: 'Chef de produit junior')
Position.create!(user: senior, company: swarovski, title: 'Chief Digital Officer')
