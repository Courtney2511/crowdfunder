# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.create(name: 'Crowdfunder', description: 'Let\'s crowdfund!', goal: 10000, user_id: 1, deadline: (Date.today + 12.months))

Project.create(name: 'Crowdfunder2', description: 'Let\'s crowdfund!', goal: 10000, user_id: 1, deadline: (Date.today + 12.months))

Reward.create(name: 'Leg Shaver', description: 'It\'s ultra sharp!', amount: '1000', project_id: Project.first.id, quantity: 3)
Reward.create(name: 'Leg Shaver', description: 'It\'s ultra sharp!', amount: '1000', project_id: Project.first.id, quantity: 3)
Reward.create(name: 'Leg Shaver', description: 'It\'s ultra sharp!', amount: '1000', project_id: Project.first.id, quantity: 3)

Reward.create(name: 'Leg Shaver', description: 'It\'s ultra sharp!', amount: '1000', project_id: Project.second.id, quantity: 3)
Reward.create(name: 'Leg Shaver', description: 'It\'s ultra sharp!', amount: '1000', project_id: Project.second.id, quantity: 3)
Reward.create(name: 'Leg Shaver', description: 'It\'s ultra sharp!', amount: '1000', project_id: Project.second.id, quantity: 3)
