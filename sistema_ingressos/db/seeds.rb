# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "admin@admin.com",
  password: "123123",
  admin: true
)

User.create(
  email: "rofl@rofl.com",
  password: "123123",
  admin: false
)

User.create(
  email: "alguem@alguem.com",
  password: "123123",
  admin: false
)

EventClass.create(
  description: "teatro"
)
EventClass.create(
  description: "esporte"
)
EventClass.create(
  description: "show nacional" 
)
EventClass.create(
  description: "show internacional"
)

AgeGroup.create(
  age: 16
)

AgeGroup.create(
  age: 18
)

AgeGroup.create(
  age: 10
)

Address.create(
  street: "SQN 210 Bloco C",
  neighborhood: "Asa norte", 
  number: 3
)

Address.create(
  street: "Setor Comercial Sul",
  neighborhood: "Asa Sul", 
  number: 5
)

Address.create(
  street: "Mané Garrincha",
  neighborhood: "Asa norte", 
  number: 4
)

Address.create(
  street: "Setor Bancário Sul",
  neighborhood: "Asa Sul", 
  number: 3
)

City.create(
  name: "Brasilia"
)

